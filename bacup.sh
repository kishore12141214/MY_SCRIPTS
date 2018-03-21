#!/bin/bash 

log_dir=/tmp/scripts/log/
backup_dir=/tmp/backup

mkdir -p $backup_dir	

for i in `cat backupfile.log`
do 

  if [-f log_dir/$i]

  then 

	echo "copying  $i to logs_backup directory "
	cp $log_dir/$i $backup_dir

  else 
	echo "&i log file dose exist, skipping."


  fi


done 


echo

echo
echo "Zipping log files"

tar -czvf backup.log.tgz $backup_dir 
echo 
echo
echo "back up successfill"



