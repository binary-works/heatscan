#!/bin/bash

#-----------------------------
# Fully Automated Git Workflow
#-----------------------------

# Default commit message
COMMIT_MSG="Update files"

# Step A: Show current status
echo "=== Git Status ==="
git status
echo ""

# Step B: Stage all changes
echo "=== Staging Changes ==="
git add .
echo ""

# Step C: Commit changes
echo "=== Committing Changes ==="
git commit -m "$COMMIT_MSG"
echo ""

# Step D: Pull latest changes with rebase
echo "=== Pulling Latest Changes (rebase) ==="
git pull origin main --rebase
echo ""

# Step E: Push changes to GitHub
echo "=== Pushing Changes ==="
git push origin main
echo ""

# Final Git status
echo "=== Final Git Status ==="
git status
echo ""

echo "✅ Git workflow completed successfully!"

# Keep terminal open if double-clicked
read -p "Press Enter to exit..."
