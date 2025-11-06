# Scripts Directory

This directory contains helper scripts to make earning GitHub achievements easier.

## Available Scripts

### `daily-contribution.sh`
**Achievement:** 🔥 Hot Streak

Creates a daily contribution to maintain your streak.

**Usage:**
```bash
./scripts/daily-contribution.sh
git push
```

**What it does:**
- Creates a contribution file for today
- Commits it to git
- Helps maintain consecutive daily contributions

---

### `co-author-commit.sh`
**Achievement:** 🧪 Pair Extraordinaire

Creates a commit with co-author attribution.

**Usage:**
```bash
./scripts/co-author-commit.sh "Partner Name" "partner@email.com" "Commit message"
```

**Example:**
```bash
./scripts/co-author-commit.sh "Jane Doe" "jane@example.com" "Add new feature"
```

**What it does:**
- Creates a commit with `Co-authored-by:` line
- Both authors get credit for the contribution

**Important:** The co-author's email must be associated with their GitHub account!

---

### `create-pr.sh`
**Achievements:** 🐙 Pull Shark, 📦 Pull Request Pro

Creates a branch and prepares it for a pull request.

**Usage:**
```bash
./scripts/create-pr.sh <branch-name> [pr-title] [pr-description]
```

**Example:**
```bash
./scripts/create-pr.sh my-feature "Add cool feature" "This adds a really cool feature"
```

**What it does:**
- Creates a new branch
- Makes a small change
- Commits it
- Provides instructions for creating the PR

---

### `pr-helper.sh`
**Achievement:** 📦 Pull Request Pro

Interactive script to create multiple PRs at once.

**Usage:**
```bash
./scripts/pr-helper.sh
```

**What it does:**
- Asks how many PRs you want to create
- Creates multiple branches with commits
- Helps you batch-create PRs for the Pull Request Pro achievement

---

## Setup

All scripts are already executable. If you need to make them executable again:

```bash
chmod +x scripts/*.sh
```

## Requirements

- Git installed
- A git repository (this repo or your fork)
- Bash shell (most Unix-like systems have this)

## Tips

1. **Read the scripts**: They're well-commented and you can learn from them
2. **Customize them**: Feel free to modify scripts for your needs
3. **Combine achievements**: Many scripts help with multiple achievements!

## Contributing

Have an idea for a new script? Open a PR! This helps with:
- 🐙 Pull Shark
- 💚 Open Sourcerer
- 📦 Pull Request Pro

