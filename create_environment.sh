#!/bin/bash

#command for name input
read -p "Enter your name: " name
mkdir submission_reminder_$name

#create subdirectorie inside submission_reminder_$name
mkdir -p "submission_reminder_$name/app"
mkdir -p "submission_reminder_$name/modules"
mkdir -p "submission_reminder_$name/assets"
mkdir -p "submission_reminder_$name/config"

#copy
cp /~/files.txt/config.env "submission_reminder_$name/config/config.env"
