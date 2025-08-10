Submission Reminder App
This is a simple Bash app that helps check student assignment submissions and remind those who haven’t submitted yet.
The script create_environment.sh sets up all the folders and files needed for the app.

What will be created
When you run create_environment.sh, it will create:

submission_reminder_{yourName}/
submission_reminder_{yourName}/
│
├── config/
│   └── config.env
│
├── app/
│   ├── reminder.sh
│   ├── functions.sh
│   └── submissions.txt
│
├── startup.sh
#How to set it up
Clone the repo:

git clone https://github.com/OrpheliePerrine/submission_reminder_app_OrpheliePerrine.git
cd submission_reminder_app_OrpheliePerrine>

#Make the script executable:
chmod +x create_environment.sh

#Run the script:
./create_environment.sh
Enter your name when asked.

The folder and files will be created.
#To run the app
Go to the new folder:
cd submission_reminder_{yourName}
Make startup.sh executable:

chmod +x startup.sh
# to start the app:
./startup.sh
