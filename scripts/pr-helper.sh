#!/bin/bash

# Interactive PR Helper
# Interactive script to create multiple PRs for Pull Request Pro achievement

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "📦 Pull Request Pro Helper"
echo "=========================="
echo ""
echo "This script helps you create multiple PRs for the Pull Request Pro achievement."
echo ""

# Check if we're in a git repo
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

# Get number of PRs to create
read -p "How many PRs would you like to create? (recommended: 5-10) " NUM_PRS

if ! [[ "$NUM_PRS" =~ ^[0-9]+$ ]] || [ "$NUM_PRS" -lt 1 ]; then
    echo "❌ Invalid number. Please enter a positive integer."
    exit 1
fi

echo ""
echo "Creating $NUM_PRS PRs..."
echo ""

for i in $(seq 1 "$NUM_PRS"); do
    BRANCH_NAME="pr-helper-$i-$(date +%Y%m%d)"
    PR_TITLE="PR Helper Contribution #$i"
    PR_DESC="This is PR #$i created to help with the Pull Request Pro achievement."
    
    echo "Creating PR #$i..."
    
    # Create branch
    git checkout -b "$BRANCH_NAME" 2>/dev/null || git checkout "$BRANCH_NAME"
    
    # Create contribution file
    CHANGE_FILE="$REPO_DIR/contributions/pr-helper-$i.md"
    mkdir -p "$REPO_DIR/contributions"
    
    cat > "$CHANGE_FILE" << EOF
# PR Helper Contribution #$i

**Created:** $(date +"%Y-%m-%d %H:%M:%S")
**PR Number:** $i of $NUM_PRS

This contribution is part of a batch created for the Pull Request Pro achievement.
EOF
    
    # Add and commit
    git add "$CHANGE_FILE"
    git commit -m "$PR_TITLE

$PR_DESC" > /dev/null 2>&1
    
    echo "  ✅ Created branch: $BRANCH_NAME"
    echo "  📝 Created file: $CHANGE_FILE"
    echo ""
    
    # Switch back to main/master for next iteration
    git checkout main 2>/dev/null || git checkout master 2>/dev/null || true
done

echo "✅ Created $NUM_PRS branches with commits!"
echo ""
echo "Next steps:"
echo "1. Push each branch:"
for i in $(seq 1 "$NUM_PRS"); do
    BRANCH_NAME="pr-helper-$i-$(date +%Y%m%d)"
    echo "   git push -u origin $BRANCH_NAME"
done
echo ""
echo "2. Create PRs on GitHub for each branch"
echo ""
echo "💡 Tip: You can use GitHub CLI to create PRs automatically:"
echo "   for i in {1..$NUM_PRS}; do"
echo "     gh pr create --title \"PR Helper #\$i\" --body \"Contribution #\$i\""
echo "   done"

