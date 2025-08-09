#!/bin/bash

# Ask for name
read -p "Enter your name: " name

# Create main directories
mkdir -p "submission_reminder_$name/app"
mkdir -p "submission_reminder_$name/modules"
mkdir -p "submission_reminder_$name/assets"
mkdir -p "submission_reminder_$name/config"

# Copy files into subfolders
cp ~/files.txt/reminder.sh "submission_reminder_$name/app/reminder.sh"
cp ~/files.txt/functions.sh "submission_reminder_$name/modules/functions.sh"
cp ~/files.txt/submissions.txt "submission_reminder_$name/assets/submissions.txt"
cp ~/files.txt/config.env "submission_reminder_$name/config/config.env"
cp ~/files.txt/startup "submission_reminder_$name/startup.sh"

# Make executable
chmod +x "submission_reminder_$name/app/reminder.sh"
chmod +x "submission_reminder_$name/startup.sh"

# Append 5 new students
cat <<EOL >> "submission_reminder_$name/assets/submissions.txt"
Olivier, Git, Submitted
Shelby, Linux Individual lab, Not Submitted
William, Discussion board, Submitted
Emma, Shell Navigation, Not Submitted
Elera, Shell Basics, Submitted
EOL
