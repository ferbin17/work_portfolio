#! /bin/bash

# create log directory if needed
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
echo -e "started the main app cronjob at "`date`>> $FILE

# Update code
cd ~/data/my_website/ && git checkout main && git pull
cd vendor/engines
for i in *
do
  cd $i && git checkout main && git pull && cd .. 
done
cd ../..

#call rake task
~/.rvm/wrappers/ruby-2.7.0@emset-name/bundle install
directory=~/data/my_website/vendor/engines/todoapp
if [ ! -d $directory ]; then
  RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@gemset-name/rake todoapp:install:migrations
fi
directory=~/data/my_website/vendor/engines/share_files_app
if [ ! -d $directory ]; then
  RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@gemset-name/rake share_files_app:install:migrations
fi
RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@gemset-name/rake assets:clobber
RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@emset-name/rake assets:precompile
RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@emset-name/rake db:migrate
RAILS_ENV=production ~/.rvm/wrappers/ruby-2.7.0@emset-name/rake db:seed
sudo /usr/bin/systemctl restart my_website.service
sudo /usr/bin/systemctl restart sidekiq.service
echo -e "finished the main app cronjob at "`date` >> $FILE
echo -e "" >> $FILE
