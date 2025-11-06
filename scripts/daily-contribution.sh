#!/bin/bash

# Daily Contribution Script
# Helps maintain a daily contribution streak for the Hot Streak achievement

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "🔥 Hot Streak Daily Contribution Helper"
echo "========================================"
echo ""

# Get current date
DATE=$(date +%Y-%m-%d)
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Create a small contribution
CONTRIB_FILE="$REPO_DIR/contributions/daily-$DATE.md"

# Create contributions directory if it doesn't exist
mkdir -p "$REPO_DIR/contributions"

# Check if already contributed today
if [ -f "$CONTRIB_FILE" ]; then
    echo "✅ You've already contributed today!"
    echo "📝 File: $CONTRIB_FILE"
    exit 0
fi

# Create today's contribution
cat > "$CONTRIB_FILE" << EOF
# Daily Contribution - $DATE

**Date:** $TIMESTAMP

This is an automated daily contribution to maintain the Hot Streak achievement.

## What I did today:
- Made a daily contribution to maintain streak
- Updated contribution log

## Notes:
Keep up the great work! 🔥
EOF

# Add to git
cd "$REPO_DIR"
git add "$CONTRIB_FILE"
git commit -m "Daily contribution: $DATE

Maintaining Hot Streak achievement 🔥"

echo ""
echo "✅ Daily contribution created!"
echo "📝 File: $CONTRIB_FILE"
echo ""
echo "Next steps:"
echo "1. Review the changes: git status"
echo "2. Push to GitHub: git push"
echo ""
echo "💡 Tip: Set up a cron job or reminder to run this script daily!"

