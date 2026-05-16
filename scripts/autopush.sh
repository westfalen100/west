#!/usr/bin/env bash
set -euo pipefail

cd "$HOME/west"

git add .

if git diff --cached --quiet; then
  echo "$(date -Is) nothing to commit"
  exit 0
fi

git commit -m "auto save $(date -Is)"
git push
echo "$(date -Is) pushed"
