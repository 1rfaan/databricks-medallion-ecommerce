# Git: Local Folder → GitHub

**1. Create an empty repo on GitHub** (no README/.gitignore), e.g. `databricks-medallion-ecommerce`.

**2. In your terminal:**

```bash
cd path/to/databricks-medallion-ecommerce

git init
git branch -M main

# optional, first time only
git config user.name "Your Name"
git config user.email "you@example.com"

git add .
git status                      # check no secrets/large files are staged

git commit -m "Initial commit: Databricks medallion pipeline (Bronze/Silver/Gold)"

git remote add origin https://github.com/<USERNAME>/<REPO>.git
git push -u origin main
```

**3. Later updates:**

```bash
git add .
git commit -m "Describe change"
git push
```

**Troubleshooting**

| Issue | Fix |
|---|---|
| Auth failed on push | Use a GitHub Personal Access Token as the password, or `gh auth login` |
| Pushed a secret by mistake | Rotate it immediately; removing it from history alone is not enough |
| `remote origin already exists` | `git remote set-url origin <URL>` |
