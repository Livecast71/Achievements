# 🏆 GitHub Achievements Guide & Helper Project

A comprehensive project to help you unlock various GitHub achievements! This repository provides scripts, guides, and templates to make earning GitHub achievements easier.

## 💡 Why We Built This

GitHub achievements are a fun way to gamify open source contributions and recognize community engagement. However, many developers find it challenging to understand:

- **What achievements exist** and how to earn them
- **The specific requirements** for each achievement (some are unclear or undocumented)
- **How to get started** with their first contributions
- **Ways to automate** repetitive tasks like daily contributions

This project was created to solve these problems by providing:

1. **Clear Documentation** - Step-by-step guides for every achievable GitHub badge
2. **Practical Tools** - Automated scripts that make earning achievements easier
3. **A Welcoming Community** - An easy entry point for first-time contributors
4. **Real Examples** - Working code and templates you can use immediately

Whether you're a beginner looking to make your first open source contribution, or an experienced developer wanting to collect all the achievements, this project serves as both a learning resource and a practical toolkit.

**Our Mission:** Make GitHub achievements accessible to everyone while building a supportive community around open source contribution.

## 📋 Table of Contents

- [Achievements Guide](#achievements-guide)
- [Quick Start](#quick-start)
- [Detailed Instructions](#detailed-instructions)
- [Scripts](#scripts)
- [Contributing](#contributing)

## 🎯 Achievements Guide

### 🐙 Pull Shark
**How to Get It:** Open a pull request that's merged into another repo.

**Steps:**
1. Fork this repository
2. Make a change (even a small one)
3. Open a PR from your fork to this repo
4. Wait for it to be merged!

### 🧑‍💻 YOLO
**How to Get It:** Merge a pull request without a review.

**Steps:**
1. Create a branch in your fork
2. Make a small change
3. Open a PR
4. Merge it immediately without waiting for reviews (self-merge is allowed in your own repos)

### 🧪 Pair Extraordinaire
**How to Get It:** Co-author a pull request (use `Co-authored-by:` in commit message).

**Steps:**
1. Use the co-author script: `./scripts/co-author-commit.sh`
2. Or manually add to your commit: `Co-authored-by: Name <email@example.com>`

### 🌈 Galaxy Brain
**How to Get It:** Answer a discussion and have your answer marked as the accepted solution.

**Steps:**
1. Go to the Discussions tab
2. Answer a question
3. Ask the original poster to mark your answer as the solution

### 💎 Starstruck
**How to Get It:** Have one of your repositories get at least 16 stars.

**Steps:**
1. Share your repository
2. Ask friends/community to star it
3. Create something useful that people want to star!

### 🐛 Public Sponsor
**How to Get It:** Sponsor someone through GitHub Sponsors.

**Steps:**
1. Go to a maintainer's profile
2. Click "Sponsor"
3. Choose a sponsorship tier

### 🔥 Hot Streak
**How to Get It:** Contribute multiple consecutive days in a row.

**Steps:**
1. Use the daily contribution script: `./scripts/daily-contribution.sh`
2. Make at least one commit per day for several days

### 📦 Pull Request Pro
**How to Get It:** Make a certain number of PRs (GitHub experiments with thresholds).

**Steps:**
1. Create multiple PRs using the PR helper script
2. Aim for 10+ PRs to increase chances

### 💬 Helper
**How to Get It:** Participate actively in Discussions.

**Steps:**
1. Answer questions in Discussions
2. Start helpful discussions
3. Be active in the community

### 💚 Open Sourcerer
**How to Get It:** Contribute to multiple public repositories.

**Steps:**
1. Contribute to this repo
2. Contribute to other open source projects
3. Aim for 5+ different repositories

## 🚀 Quick Start

1. **Fork this repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/github-achievements.git
   cd github-achievements
   ```

2. **Set up the scripts**
   ```bash
   chmod +x scripts/*.sh
   ```

3. **Start earning achievements!**
   - Follow the guides above
   - Use the helper scripts in the `scripts/` directory

## 📖 Detailed Instructions

See the [ACHIEVEMENTS.md](./ACHIEVEMENTS.md) file for detailed step-by-step instructions for each achievement.

## 🛠️ Scripts

- `scripts/daily-contribution.sh` - Helps maintain a daily contribution streak
- `scripts/create-pr.sh` - Creates a PR with proper formatting
- `scripts/co-author-commit.sh` - Creates a commit with co-author attribution
- `scripts/pr-helper.sh` - Interactive PR creation helper

## 🤝 Contributing

Contributions are welcome! This is a great way to:
- Get the **Open Sourcerer** achievement
- Practice making PRs
- Help others earn achievements

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

## 📝 Notes

- Some achievements (Arctic Code Vault, Mars 2020) are no longer attainable
- Achievement requirements may change as GitHub experiments
- Be patient - some achievements take time to unlock

## 📄 License

MIT License - feel free to use this project to earn your achievements!

---

**Happy Achievement Hunting! 🎉**

