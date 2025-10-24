#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
  cat <<'USAGE'
GitHub Ultimate Starter Pack CLI

Usage: gusp <command>

Commands:
  init        Bootstrap the current directory with starter templates
  scaffold    Regenerate OSS boilerplate files (LICENSE, CODEOWNERS, etc.)
  help        Show this message
USAGE
}

cmd=${1:-help}
shift || true

case "$cmd" in
  init)
    "$SCRIPT_DIR/gusp-init.sh" "$@"
    ;;
  scaffold)
    "$SCRIPT_DIR/gusp-scaffold.sh" "$@"
    ;;
  help|-h|--help)
    usage
    ;;
  *)
    echo "Unknown command: $cmd" >&2
    usage
    exit 1
    ;;
 esac
