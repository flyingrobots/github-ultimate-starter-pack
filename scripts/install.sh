#!/usr/bin/env bash
set -euo pipefail

INSTALL_ROOT="${HOME}/.gusp"
BIN_DIR="$INSTALL_ROOT/bin"
REPO_DIR="$INSTALL_ROOT/repo"

mkdir -p "$BIN_DIR"
rm -rf "$REPO_DIR"
mkdir -p "$REPO_DIR"

rsync -a --delete --exclude '.git' --exclude 'node_modules' --exclude '.obsidian' "$(pwd)/" "$REPO_DIR/"

ln -sf "$REPO_DIR/scripts/gusp.sh" "$BIN_DIR/gusp"
ln -sf "$REPO_DIR/scripts/gusp-scaffold.sh" "$BIN_DIR/gusp-scaffold"

cat <<EOF
GitHub Ultimate Starter Pack scripts installed to $INSTALL_ROOT
Add the following to your shell config if it's not already in PATH:

  export PATH="$BIN_DIR:$PATH"

Then run 'gusp init' from any directory.
EOF
