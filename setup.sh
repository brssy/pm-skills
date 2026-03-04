#!/bin/bash
# Sets up pm-claude-skills by symlinking this repo into ~/.claude/skills/pm-skills
# Run once after cloning. Re-run anytime if you move the repo.

set -e

SKILLS_DIR="$HOME/.claude/skills"
LINK_NAME="$SKILLS_DIR/pm-skills"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$SKILLS_DIR"

if [ -L "$LINK_NAME" ]; then
  echo "Updating existing symlink..."
  rm "$LINK_NAME"
fi

ln -s "$REPO_DIR" "$LINK_NAME"
echo "Done! Skills linked: $LINK_NAME → $REPO_DIR"
echo ""
echo "To get updates: cd $REPO_DIR && git pull"
