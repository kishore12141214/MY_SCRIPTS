#!/bin/bash


TIME=`date +'%d_%m_%Y_%H_%M_%S'`
BACKUP="db_backup_$TIME".gz
BACKUP_DIR="/opt/db_backup_dir"
PATHOFBACKUPFILE="$BACKUP_DIR/$BACKUP"
LOG_FILE="`touch $BACKUP_DIR/"backup_log"_`date +'%Y_%m'``".txt
echo "mysqldump started at `date +'%d-%m-%Y %H:%M:%S'`">>"$LOG_FILE"
mysqldump --user=root --password=redhat --default-character-set=utf8  kishore | gzip >> "$PATHOFBACKUPFILE"
echo "mysqldump finished at `date +'%d-%m-%Y %H:%M:%S'`">>"$LOG_FILE"
chown devops "$PATHOFBACKUPFILE "
chown devops "$LOG_FILE"
sudo echo "file permission changed">> "$LOG_FILE"
find "$BACKUP_DIR" -name 'db_backup_*' -mtime +8 -exec rm '{}'\;
echo "old files deletes">> "$LOG_FILE"
echo "operation finished at `date +'%d-%m-%Y %H:%M:%S'`">>"$LOG_FILE"
echo"***************************">>"$LOG_FILE"
exit 0
