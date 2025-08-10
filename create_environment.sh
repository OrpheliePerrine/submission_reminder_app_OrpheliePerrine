#!/bin/bash

# Ask for name
read -p "Enter your name: " name

# Create main directories
mkdir -p "submission_reminder_$name/app"
mkdir -p "submission_reminder_$name/modules"
mkdir -p "submission_reminder_$name/assets"
mkdir -p "submission_reminder_$name/config"

#Reminder.sh file
cat << 'EOF' > submission_reminder_$name/app/reminder.sh
#!/bin/bash

# Source environment variables and helper functions
source ./config/config.env
source ./modules/functions.sh

# Path to the submissions file
submissions_file="./assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions $submissions_file

EOF

chmod +x submission_reminder_$name/app/reminder.sh

#Function.sh
cat << 'EOF' > submission_reminder_$name/modules/functions.sh
#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done  < <(tail -n +2 "$submissions_file") # Skip the header
}
EOF

chmod +x submission_reminder_$name/modules/functions.sh

#submissions.txt content
cat << 'EOF' > submission_reminder_$name/assets/submissions.txt
#Initial submissions data
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Olivier, Git, submitted
Shelby, Linux Individual lab, not submitted
William, Discussion board, submitted
Emma, Shell Navigation, not submitted
Elera, Shell Basics, submitted
EOF

#config.env
cat << 'EOF' > submission_reminder_$name/config/config.env
# This is the config file
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
EOF

#Startup script
cat << 'EOF' > submission_reminder_$name/startup.sh
#!/bin/bash
bash app/reminder.sh
EOF

chmod +x submission_reminder_$name/startup.sh
