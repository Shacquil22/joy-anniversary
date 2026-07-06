#!/bin/bash
set -e
cd "$(dirname "$0")"

REMOTE="https://github.com/Shacquil22/joy-anniversary.git"

if git remote get-url origin &>/dev/null; then
  git remote set-url origin "$REMOTE"
else
  git remote add origin "$REMOTE"
fi

git push -u origin main

echo ""
echo "Pushed to https://github.com/Shacquil22/joy-anniversary"
echo ""
echo "Enable Pages: https://github.com/Shacquil22/joy-anniversary/settings/pages"
echo "  → Deploy from branch → main → / (root)"
echo ""
echo "Joy's link: https://shacquil22.github.io/joy-anniversary/"
