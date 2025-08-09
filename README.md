The application reminds students about upcoming assigments deadlines by checking their submission status found in the submission.txt file.

The submission reminder app: reminds you which students haven't submitted thei assignment, shows the assigmnemt name and how many days are left until the deadline.

The structure
submission_reminder_app_$name/
|-create_environment.sh		#script to set up environment
|-README.md			#project documentation
|-submission_reminder_$name/	#personalized app folder
| |-assets/
| | |--submissions.txt		#student submission records
| |-app/
| | |--reminder.sh
| |-modules/
| | |--functions.sh
| |-config/
| | |--config.env		#configuration file
| |-startup.sh			#main script to start the reminder app

how to intall
git clone https://github.com/OrpheliePerrine/submission_reminder_app_OrpheliePerrine.git
cd submission_reminder_app_OrpheliePerrine

#then make the script executable
chmod +x create_environment.sh

#Run the script
./create_environment.sh

It will ask for you name, Enter your name

list the files in your directory, a new file should be created

then cd into the new file: 
cd submission_reminder_$name

Run the main script
./startup.sh

assignment name and days remaining is shown
reminded about students who have not submitted will also be shown

Students data is stored in assets/submissons.txt. under the format:
studentname, assignmentname, submissionstatus

The script must be run in a linux environment
