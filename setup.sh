#!/usr/bin/env bash

# Variables
REPO_URL="https://github.com/shan-shaji/flutter-pre-commit-hook-script"
GITHOOKS_DIR=".githooks"
PRE_COMMIT_FILE="flutter_lint_check.sh"
TARGET_HOOK="$GITHOOKS_DIR/pre-commit"

echo "Downloading pre-commit hook from GitHub..."
curl -O "$REPO_URL/raw/main/$PRE_COMMIT_FILE"

if [ ! -f "$PRE_COMMIT_FILE" ]; then
    echo "Error: Failed to download pre-commit.sh from GitHub."
    exit 1
fi

if [ ! -d "$GITHOOKS_DIR" ]; then
    echo "Creating .githooks directory..."
    mkdir "$GITHOOKS_DIR"
else
    echo ".githooks directory already exists."
fi

echo "Moving flutter_lint_check.sh to .githooks and renaming to pre-commit..."
mv "$PRE_COMMIT_FILE" "$TARGET_HOOK"

echo "Making the pre-commit hook executable..."
chmod +x "$TARGET_HOOK"

echo "Configuring git to use the .githooks folder for hooks..."
git config core.hooksPath "$GITHOOKS_DIR"


echo "Pre-commit hook successfully installed!"
