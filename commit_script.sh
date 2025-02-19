#!/bin/bash

# Configure Git user (change this to your GitHub username and email)
git config --global user.name "your-username"
git config --global user.email "your-email@example.com"

# Create or modify a dummy file
echo "$(date)" >> contributions.txt

# Add, commit, and push changes
git add contributions.txt
git commit -m "Automated commit - $(date)"
git push
