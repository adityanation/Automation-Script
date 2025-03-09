#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e  

# Configure Git user (Run this once manually; remove after setup)
git config --global user.name "adityanation"
git config --global user.email "adityasinha06841@gmail.com"

# Navigate to the Git repository (Change this to your repo path)
cd https://github.com/adityanation/Automation-Script || exit

# Ensure the repository is up-to-date
git pull origin main  # Change 'main' to 'master' if needed

# Create or update the contributions file
echo "$(date)" >> contributions.txt

# Add, commit, and push changes
git add contributions.txt
git commit -m "Automated commit - $(date)"
git push origin main  # Change 'main' to your branch name

echo "Changes pushed successfully!"
