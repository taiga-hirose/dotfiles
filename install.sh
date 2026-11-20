#!/bin/bash
set -e
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Place global CLAUDE.md
mkdir -p ~/.claude
cp "$DOTFILES_DIR/claude/CLAUDE.md" ~/.claude/CLAUDE.md

# Install Claude Code if missing
if ! command -v claude >/dev/null 2>&1; then
  npm install -g @anthropic-ai/claude-code
fi
