# create_and_push.ps1
# Usage: run from inside the project folder where index.html and styles.css live
# Example: cd C:\path\to\claimsketchKE ; .\create_and_push.ps1

# 1) Ensure we are on main branch and have an initial commit
git init
git add .
git commit -m "Initial commit — ClaimSketch landing page" 2>$null

# 2) rename branch to main (if not already)
git branch -M main

# 3) create the repo on GitHub (requires gh and gh auth login done)
gh repo create MUNJINGUGI/claimsketchKE --private --source=. --remote=origin --push --description "ClaimSketch landing page — AI-powered claim submission"

# 4) verify and open the repo in browser
git remote -v
gh repo view MUNJINGUGI/claimsketchKE --web

Write-Host "Repository created and initial push complete."
Write-Host "Next: add assets/logo.png and assets/screen.png, git add/commit/push those, then enable Pages in the repo Settings → Pages (branch: main, folder: /)."