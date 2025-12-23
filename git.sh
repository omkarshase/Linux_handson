#!/bin/bash

# Ask for commit message
read -p "Enter your commit message: " commit_message

# Stage all new and updated files
git add .

# Commit with the provided message
git commit -m "$commit_message"

# Push to the current branch
git push

echo "All changes have been pushed successfully!"

