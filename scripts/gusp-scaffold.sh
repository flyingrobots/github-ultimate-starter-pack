#!/usr/bin/env bash
set -euo pipefail

SOURCE="${BASH_SOURCE[0]}"
while [ -L "$SOURCE" ]; do
  DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
TEMPLATE_ROOT="$SCRIPT_DIR/templates"

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    return 1
  fi
  return 0
}

if ! require_command git; then
  echo "git must be installed to run this script." >&2
  exit 1
fi

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root"

remote_url=$(git remote get-url origin 2>/dev/null || echo "")
repo_name=${repo_root##*/}
default_org=""
if [[ -n "$remote_url" ]]; then
  if [[ $remote_url =~ github.com[:/](.+)/([^/]+?)(\.git)?$ ]]; then
    default_org="${BASH_REMATCH[1]}"
    repo_name="${BASH_REMATCH[2]}"
  fi
fi

current_year=$(date +%Y)

has_gum=false
has_huh=false
if require_command gum; then
  has_gum=true
fi
if require_command huh; then
  has_huh=true
fi

prompt_input() {
  local prompt="$1"
  local default_value="${2-}"
  local value=""
  if $has_huh; then
    if [[ -n "$default_value" ]]; then
      value=$(huh input --prompt "$prompt" --value "$default_value")
    else
      value=$(huh input --prompt "$prompt")
    fi
  elif $has_gum; then
    if [[ -n "$default_value" ]]; then
      value=$(gum input --prompt "$prompt" --value "$default_value")
    else
      value=$(gum input --prompt "$prompt")
    fi
  else
    if [[ -n "$default_value" ]]; then
      read -rp "$prompt [$default_value]: " value
      value=${value:-$default_value}
    else
      read -rp "$prompt: " value
    fi
  fi
  echo "$value"
}

prompt_select() {
  local prompt="$1"
  shift
  local options=($@)
  local choice
  if $has_huh; then
    choice=$(printf '%s\n' "${options[@]}" | huh select --prompt "$prompt")
  elif $has_gum; then
    choice=$(gum choose --header "$prompt" "${options[@]}")
  else
    echo "$prompt" >&2
    select opt in "${options[@]}"; do
      choice="$opt"
      break
    done
  fi
  echo "$choice"
}

confirm_overwrite() {
  local file="$1"
  if [[ ! -e "$file" ]]; then
    return 0
  fi
  local prompt="${file} exists. Overwrite?"
  local response
  if $has_huh; then
    response=$(huh select --prompt "$prompt" overwrite skip)
  elif $has_gum; then
    response=$(gum choose --header "$prompt" overwrite skip)
  else
    read -rp "$prompt [y/N]: " response
    case "$response" in
      [yY][eE][sS]|[yY]) response="overwrite" ;;
      *) response="skip" ;;
    esac
  fi
  [[ "$response" == "overwrite" ]]
}

render_template() {
  local template_file="$1"
  local rendered="$(cat "$template_file")"
  rendered="${rendered//\{\{PROJECT_NAME\}\}/$project_name}"
  rendered="${rendered//\{\{YEAR\}\}/$current_year}"
  rendered="${rendered//\{\{COPYRIGHT\}\}/$copyright_holder}"
  rendered="${rendered//\{\{CODEOWNERS\}\}/$codeowners_team}"
  rendered="${rendered//\{\{CONTACT_EMAIL\}\}/$contact_email}"
  rendered="${rendered//\{\{SECURITY_EMAIL\}\}/$security_email}"
  echo "$rendered"
}

write_from_template() {
  local template="$1"
  local destination="$2"
  local content
  content=$(render_template "$template")
  if confirm_overwrite "$destination"; then
    mkdir -p "$(dirname "$destination")"
    printf '%s\n' "$content" > "$destination"
    echo "✓ Wrote $destination"
  else
    echo "↷ Skipped $destination"
  fi
}

project_name=${OSS_SCAFFOLD_PROJECT_NAME:-$(prompt_input "Project name" "$repo_name")}
organization=${OSS_SCAFFOLD_ORG:-$(prompt_input "Organisation / Owner" "$default_org")}
if [[ -n ${OSS_SCAFFOLD_LICENSE:-} ]]; then
  license_choice=$OSS_SCAFFOLD_LICENSE
else
  license_choice=$(prompt_select "Select license" MIT Apache-2.0)
fi
copyright_holder=${OSS_SCAFFOLD_COPYRIGHT:-$(prompt_input "Copyright holder" "${organization:-$project_name} Contributors")}
if [[ -n ${OSS_SCAFFOLD_NOTICE:-} ]]; then
  notice_choice=$OSS_SCAFFOLD_NOTICE
else
  notice_choice=$(prompt_select "Generate NOTICE file?" Yes No)
fi
codeowners_team=${OSS_SCAFFOLD_CODEOWNERS:-$(prompt_input "CODEOWNERS default entry" "@${organization:-example}/maintainers")}
contact_email=${OSS_SCAFFOLD_CONTACT_EMAIL:-$(prompt_input "Project contact email" "opensource@${organization:-example}.com")}
security_email=${OSS_SCAFFOLD_SECURITY_EMAIL:-$(prompt_input "Security contact email" "security@${organization:-example}.com")}

license_template="$TEMPLATE_ROOT/licenses/mit.tmpl"
if [[ "$license_choice" == "Apache-2.0" ]]; then
  license_template="$TEMPLATE_ROOT/licenses/apache-2.0.tmpl"
fi

write_from_template "$license_template" "LICENSE"

if [[ "$notice_choice" == "Yes" ]]; then
  write_from_template "$TEMPLATE_ROOT/core/notice.tmpl" "NOTICE"
fi

write_from_template "$TEMPLATE_ROOT/core/codeowners.tmpl" ".github/CODEOWNERS"
write_from_template "$TEMPLATE_ROOT/core/contributing.tmpl" "CONTRIBUTING.md"
write_from_template "$TEMPLATE_ROOT/core/code_of_conduct.tmpl" "CODE_OF_CONDUCT.md"
write_from_template "$TEMPLATE_ROOT/core/security.tmpl" "SECURITY.md"

badge="[![GitHub Ultimate Starter Pack CI](https://github.com/${organization:-example}/${repo_name}/actions/workflows/ci.yml/badge.svg)](https://github.com/${organization:-example}/${repo_name}/actions/workflows/ci.yml)"
if confirm_overwrite "README_BADGES.txt"; then
  printf '%s\n' "$badge" > README_BADGES.txt
  echo "✓ Wrote README_BADGES.txt"
else
  echo "↷ Skipped README_BADGES.txt"
fi

echo
cat <<EOF
Scaffold complete! Generated files:
  - LICENSE ($license_choice)
  - NOTICE ($notice_choice)
  - .github/CODEOWNERS
  - CONTRIBUTING.md
  - CODE_OF_CONDUCT.md
  - SECURITY.md
  - README_BADGES.txt (badge snippet)

Re-run $0 anytime to update; existing files prompt before overwrite.
EOF
