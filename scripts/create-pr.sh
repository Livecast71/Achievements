#!/bin/bash

# Create PR Script
# Helps create pull requests for Pull Shark and Pull Request Pro achievements

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "🐙 Pull Request Helper"
echo "====================="
echo ""

# Check if branch name provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 <branch-name> [pr-title] [pr-description]"
    echo ""
    echo "Example:"
    echo "  $0 my-feature \"Add new feature\" \"This PR adds a cool new feature\""
    exit 1
fi

BRANCH_NAME="$1"
PR_TITLE="${2:-Contribution from $BRANCH_NAME}"
PR_DESC="${3:-This PR helps with GitHub achievements!}"

# Check if we're in a git repo
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Check if branch exists
if git show-ref --verify --quiet refs/heads/"$BRANCH_NAME"; then
    echo "ℹ️  Branch '$BRANCH_NAME' already exists, checking it out..."
    git checkout "$BRANCH_NAME"
else
    echo "📝 Creating new branch: $BRANCH_NAME"
    git checkout -b "$BRANCH_NAME"
fi

# Create a small change
CHANGE_FILE="$REPO_DIR/contributions/pr-$(date +%Y%m%d-%H%M%S).md"
mkdir -p "$REPO_DIR/contributions"

cat > "$CHANGE_FILE" << EOF
# Pull Request Contribution

**Branch:** $BRANCH_NAME
**Date:** $(date +"%Y-%m-%d %H:%M:%S")

This contribution helps with:
- 🐙 Pull Shark achievement
- 📦 Pull Request Pro achievement

## Changes
- Added contribution file
- Branch: $BRANCH_NAME
EOF

# Add and commit
git add "$CHANGE_FILE"
git commit -m "$PR_TITLE

$PR_DESC"

# Get remote URL
REMOTE_URL=$(git remote get-url origin 2>/dev/null)

if [ -z "$REMOTE_URL" ]; then
    echo ""
    echo "⚠️  No remote URL found. Please add a remote:"
    echo "   git remote add origin <your-repo-url>"
    echo ""
    echo "✅ Branch created and changes committed locally!"
    echo "📝 Branch: $BRANCH_NAME"
    echo ""
    echo "Next steps:"
    echo "1. Add remote (if needed): git remote add origin <url>"
    echo "2. Push branch: git push -u origin $BRANCH_NAME"
    echo "3. Create PR on GitHub"
    exit 0
fi

# Check if we need to push
if git diff --quiet HEAD origin/"$BRANCH_NAME" 2>/dev/null; then
    NEEDS_PUSH=true
else
    NEEDS_PUSH=false
fi

echo ""
echo "✅ Branch and commit created!"
echo "📝 Branch: $BRANCH_NAME"
echo "📄 File: $CHANGE_FILE"
echo ""

if [ "$NEEDS_PUSH" = true ] || ! git ls-remote --heads origin "$BRANCH_NAME" > /dev/null 2>&1; then
    echo "Next steps:"
    echo "1. Push branch: git push -u origin $BRANCH_NAME"
    echo "2. Create PR on GitHub"
    echo ""
    echo "Or use GitHub CLI (if installed):"
    echo "   gh pr create --title \"$PR_TITLE\" --body \"$PR_DESC\""
else
    echo "Branch already exists on remote. You can create a PR on GitHub!"
fi

