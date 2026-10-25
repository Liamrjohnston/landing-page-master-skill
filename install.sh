#!/usr/bin/env bash
# Copies the landing-page-master skill into ~/.claude/skills/.
# Copies files only. No network calls. Asks before replacing an existing copy.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$dest"
target="$dest/landing-page-master"
if [ -e "$target" ]; then
  read -r -p "$target already exists. Replace it? [y/N] " ans
  case "$ans" in y|Y) rm -rf "$target" ;; *) echo "Left it alone."; exit 0 ;; esac
fi
cp -R "$here/skills/landing-page-master" "$target"
echo "Installed to $target. Start a new Claude Code session and type /landing-page-master."
