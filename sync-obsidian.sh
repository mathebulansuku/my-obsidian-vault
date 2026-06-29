#!/usr/bin/env bash

set -euo pipefail



cd ~/.openclaw/workspace/my-obsidian-vault

git pull --rebase

git add .

if git diff --cached --quiet; then

  echo "No Obsidian changes to sync."

else

  git commit -m "OpenClaw notes update $(date -Iseconds)"

  git push

fi
