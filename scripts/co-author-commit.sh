#!/bin/bash

# Co-Author Commit Script
# Helps create commits with co-author attribution for Pair Extraordinaire achievement

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "🧪 Pair Extraordinaire - Co-Author Helper"
echo "========================================="
echo ""

# Check if co-author info provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 \"Co-Author Name\" \"coauthor@email.com\" [commit message]"
    echo ""
    echo "Example:"
    echo "  $0 \"Jane Doe\" \"jane@example.com\" \"Add new feature\""
    echo ""
    echo "For multiple co-authors, run the script multiple times or edit the commit message manually."
    exit 1
fi

CO_AUTHOR_NAME="$1"
CO_AUTHOR_EMAIL="$2"
COMMIT_MSG="${3:-Add contribution with co-author}"

# Create a small change file
CHANGE_FILE="$REPO_DIR/contributions/co-authored-$(date +%Y%m%d-%H%M%S).md"

# Create contributions directory if it doesn't exist
mkdir -p "$REPO_DIR/contributions"

# Create the file
cat > "$CHANGE_FILE" << EOF
# Co-Authored Contribution

**Co-Author:** $CO_AUTHOR_NAME <$CO_AUTHOR_EMAIL>
**Date:** $(date +"%Y-%m-%d %H:%M:%S")

This contribution was co-authored for the Pair Extraordinaire achievement.

## Contribution Details
- Co-authored by: $CO_AUTHOR_NAME
- Email: $CO_AUTHOR_EMAIL
EOF

# Add to git
cd "$REPO_DIR"
git add "$CHANGE_FILE"

# Create commit with co-author
git commit -m "$COMMIT_MSG

Co-authored-by: $CO_AUTHOR_NAME <$CO_AUTHOR_EMAIL>"

echo ""
echo "✅ Co-authored commit created!"
echo "📝 Co-Author: $CO_AUTHOR_NAME <$CO_AUTHOR_EMAIL>"
echo "📄 File: $CHANGE_FILE"
echo ""
echo "Next steps:"
echo "1. Review: git log -1"
echo "2. Push: git push"
echo ""
echo "💡 Make sure the co-author's email is associated with their GitHub account!"

