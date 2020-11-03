#! /bin/bash

# create sub directory for main app if needed
directory=~/data/my_website/log/main_app
if [ ! -d $directory ]; then
  mkdir $directory
fi

# create log file for cron if needed 
CRON_FILE=~/data/my_website/log/main_app/main_app_cron.log
if test -f "$CRON_FILE"; then
   :
else
   touch $CRON_FILE
fi

# create log file for script if needed
FILE=~/data/my_website/log/main_app/main_app.log
if test -f "$FILE"; then
   :
else
   touch $FILE
fi

# create sub directory for todoapp if needed
directory=~/data/my_website/vendor/engines/todoapp
if [ ! -d $directory ]; then
  subdirectory=~/mf17/my_website/log/todoapp
  if [ ! -d $subdirectory ]; then
    mkdir $subdirectory
  fi
fi

# create sub directory and log files for share_files_app if needed
directory=~/data/my_website/vendor/engines/share_files_app
if [ ! -d $directory ]; then
  subdirectory=~/mf17/my_website/log/share_file_app
  if [ ! -d $subdirectory ]; then
    mkdir $subdirectory
  fi
  
  CRON_FILE=~/mf17/my_website/log/share_file_app/rake_runner_cron.log
  if test -f "$CRON_FILE"; then
     :
  else
     touch $CRON_FILE
  fi
  
  FILE=~/mf17/my_website/log/share_file_app/rake_runner.log
  if test -f "$FILE"; then
    :
  else
     touch $FILE
  fi
fi
