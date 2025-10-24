#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SCAFFOLD_SCRIPT="$TEMPLATE_ROOT/scripts/gusp-scaffold.sh"

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    return 1
  fi
  return 0
}

has_gum=false
has_huh=false
has_gh=false
if require_command gum; then
  has_gum=true
fi
if require_command huh; then
  has_huh=true
fi
if require_command gh; then
  has_gh=true
fi

prompt_input() {
  local prompt="$1"
  local default_value="${2-}"
  local value
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
  local options=("$@")
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

prompt_yes_no() {
  local prompt="$1"
  local default_answer="${2:-Y}"
  local yes_label
  local no_label
  if [[ $default_answer =~ ^[Yy]$ ]]; then
    yes_label="Yes"
    no_label="No"
  else
    yes_label="yes"
    no_label="No"
  fi
  local response
  if $has_huh; then
    response=$(printf '%s\n' yes no | huh select --prompt "$prompt" --value $( [[ $default_answer =~ ^[Yy]$ ]] && echo yes || echo no ))
  elif $has_gum; then
    response=$(gum choose --header "$prompt" $( [[ $default_answer =~ ^[Yy]$ ]] && echo yes || echo no ) $( [[ $default_answer =~ ^[Yy]$ ]] && echo no || echo yes ))
  else
    read -rp "$prompt [${default_answer}/$( [[ $default_answer =~ ^[Yy]$ ]] && echo N || echo Y )]: " response
    response=${response:-$default_answer}
  fi
  case "$response" in
    yes|Yes|Y|y) echo true ;;
    *) echo false ;;
  esac
}

copy_dir() {
  local src="$1"
  local dest="$2"
  if [[ ! -d "$src" ]]; then
    return
  fi
  if [[ -d "$dest" ]]; then
    if ! $(prompt_yes_no "${dest} exists. Merge updates?" N); then
      echo "↷ Skipped $dest"
      return
    fi
    rsync -a --exclude '.DS_Store' "$src/" "$dest/"
  else
    rsync -a --exclude '.DS_Store' "$src/" "$dest"
  fi
  echo "✓ Synced $(basename "$dest") templates"
}

ensure_git_repo() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    return
  fi
  echo "Initializing git repository..."
  git init -q
  # ensure main is default branch
  git checkout -q -b main 2>/dev/null || true
}

create_remote_if_needed() {
  local owner="$1"
  local repo="$2"
  local visibility="$3"
  if git remote get-url origin >/dev/null 2>&1; then
    return
  fi
  if ! $has_gh; then
    echo "gh CLI not available; skipping remote creation."
    return
  fi
  if [[ $(prompt_yes_no "Create GitHub repository $owner/$repo?" Y) == false ]]; then
    return
  fi
  local vis_flag=--public
  if [[ $visibility == "private" ]]; then
    vis_flag=--private
  elif [[ $visibility == "internal" ]]; then
    vis_flag=--internal
  fi
  local full_repo=$repo
  if [[ $owner != "" ]]; then
    full_repo=$owner/$repo
  fi
  echo "Creating repository on GitHub..."
  if ! gh repo create "$full_repo" $vis_flag --confirm >/dev/null 2>&1; then
    echo "⚠️  Failed to create GitHub repo. Add remote manually later."
    return
  fi
  local protocol=$(gh config get git_protocol 2>/dev/null || echo ssh)
  local remote_url
  if [[ $protocol == ssh ]]; then
    remote_url="git@github.com:${full_repo}.git"
  else
    remote_url="https://github.com/${full_repo}.git"
  fi
  git remote add origin "$remote_url"
  echo "✓ Added remote origin -> $remote_url"
}

main() {
  ensure_git_repo

  local project_guess=$(basename "$PWD")
  local accept_name=$(prompt_yes_no "Looks like you're setting up '$project_guess'. Keep this name?" Y)
  local project_name
  if $accept_name; then
    project_name="$project_guess"
  else
    project_name=$(prompt_input "Project name" "$project_guess")
  fi

  local owner_default=""
  local remote_url=$(git remote get-url origin 2>/dev/null || echo "")
  if [[ -n $remote_url ]]; then
    if [[ $remote_url =~ github.com[:/](.+)/([^/]+?)(\.git)?$ ]]; then
      owner_default="${BASH_REMATCH[1]}"
    fi
  fi
  if [[ -z $owner_default && $has_gh ]]; then
    owner_default=$(gh api user -q '.login' 2>/dev/null || echo "")
  fi
  local owner=$(prompt_input "GitHub owner (user or org)" "$owner_default")
  local visibility=$(prompt_select "Repository visibility" public private)

  create_remote_if_needed "$owner" "$project_name" "$visibility"

  copy_dir "$TEMPLATE_ROOT/.github" ".github"
  copy_dir "$TEMPLATE_ROOT/docs" "docs"

  local codeowners_default="@$owner"
  local contact_default="opensource@${owner}.com"
  local security_default="security@${owner}.com"
  local license=$(prompt_select "Choose license" MIT Apache-2.0)
  local notice=$(prompt_select "Generate NOTICE file?" Yes No)
  local codeowners=$(prompt_input "CODEOWNERS entry" "$codeowners_default")
  local contact_email=$(prompt_input "Contact email" "$contact_default")
  local security_email=$(prompt_input "Security email" "$security_default")

  OSS_SCAFFOLD_PROJECT_NAME="$project_name" \
  OSS_SCAFFOLD_ORG="$owner" \
  OSS_SCAFFOLD_LICENSE="$license" \
  OSS_SCAFFOLD_NOTICE="$notice" \
  OSS_SCAFFOLD_CODEOWNERS="$codeowners" \
  OSS_SCAFFOLD_CONTACT_EMAIL="$contact_email" \
  OSS_SCAFFOLD_SECURITY_EMAIL="$security_email" \
  OSS_SCAFFOLD_COPYRIGHT="${owner:-$project_name} Contributors" \
  "$SCAFFOLD_SCRIPT"

  if [[ ! -f README.md ]]; then
    cat <<EOF > README.md
# $project_name

> TODO: Describe the mission of $project_name.

## Getting Started

- Install dependencies
- Run tests
- Review docs/ for project rituals and templates

EOF
    echo "✓ Created README.md"
  fi

  cat <<EOF

GitHub Ultimate Starter Pack init complete!
Next steps:
  1. Review generated files and customise placeholders.
  2. Run node scripts/generate-index.mjs (optional) to refresh catalog metadata.
  3. git add . && git commit -m "chore: bootstrap repo with GitHub Ultimate Starter Pack"
  4. Push to origin when ready.
EOF
}

main "$@"
