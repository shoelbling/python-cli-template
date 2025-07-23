# 🧑‍💻 Development Workflow Cheat Sheet

## 🧪 1. Making Changes Locally

```bash
git status            # See what's changed
git diff              # View code diffs
git add .             # Stage all changes
git commit -m "Your message here"
```

---

## 🌿 2. Working on a Feature or Hotfix

```bash
git checkout -b feature/your-feature-name
# make changes, commit

git push -u origin feature/your-feature-name
# then open a Pull Request to 'develop' on GitHub
```

For hotfixes:

```bash
git checkout -b hotfix/fix-name main
# make fix, commit

git push -u origin hotfix/fix-name
# then open a Pull Request to 'main'
```

---

## ✅ 3. Merging to Main / Deploy

After PR is approved and CI passes:
- Merge into `main`
- GitHub Actions will deploy automatically

---

## 🏷️ 4. Tagging a Release

```bash
bash scripts/create-release.sh 1.0.0
```

This creates `v1.0.0` and pushes it, triggering release workflow.

---

## 🔁 5. Keep Develop Up to Date After a Hotfix

```bash
git checkout develop
git pull origin develop
git merge main
git push
```

---

## 🧹 6. Cleanup Merged Branches

```bash
git branch -d feature/your-feature-name
git push origin --delete feature/your-feature-name
```

---

Happy coding! 🚀
