# 🚀 Quick Start Guide

Get started earning GitHub achievements in 5 minutes!

## Step 1: Fork This Repository

1. Click the "Fork" button at the top right
2. This creates your own copy to work with

## Step 2: Clone Your Fork

```bash
git clone https://github.com/YOUR_USERNAME/github-achievements.git
cd github-achievements
```

## Step 3: Make Your First Contribution

### Option A: Add Your Name (Easiest!)

1. Edit `CONTRIBUTORS.md`
2. Add your name to the list
3. Commit and push:
   ```bash
   git checkout -b add-my-name
   git add CONTRIBUTORS.md
   git commit -m "Add my name to contributors"
   git push origin add-my-name
   ```
4. Open a Pull Request on GitHub
5. When merged, you get 🐙 **Pull Shark**!

### Option B: Use the Scripts

1. Make scripts executable (already done):
   ```bash
   chmod +x scripts/*.sh
   ```

2. Try the daily contribution script:
   ```bash
   ./scripts/daily-contribution.sh
   git push
   ```
   This helps with 🔥 **Hot Streak**!

## Step 4: Create Your First PR

Use the PR helper script:
```bash
./scripts/create-pr.sh my-first-pr "My First PR" "This is my first contribution!"
git push -u origin my-first-pr
```

Then create the PR on GitHub!

## Step 5: Explore More Achievements

- **🧪 Pair Extraordinaire**: Use `./scripts/co-author-commit.sh`
- **🌈 Galaxy Brain**: Answer questions in Discussions
- **📦 Pull Request Pro**: Create multiple PRs with `./scripts/pr-helper.sh`
- **🔥 Hot Streak**: Run `./scripts/daily-contribution.sh` daily

## Next Steps

- Read [ACHIEVEMENTS.md](./ACHIEVEMENTS.md) for detailed guides
- Check [CONTRIBUTING.md](./CONTRIBUTING.md) for contribution guidelines
- Join Discussions to help others and earn 💬 **Helper**!

## Need Help?

- Open a Discussion
- Check the detailed guides
- Ask the community!

**Happy achievement hunting! 🎉**

