LOG_LOC="/var/log/mybackup.log"

function check_dir_loc{
	if[ ! -s "/backup_dirs.conf "]
        then echo "please create a list of directories to backup by creating a backups_dir.conf file in the root directory"
		exit 1
	f1}
function check_backup_loc{
    if[ ! -s "/backup_loc.conf" ]
    then echo "Please specify the full path of where to send the backup to  by creating a backup_loc.conf file in the root director y"
	    exit 1
    f1 }
function check_schedule{
     if[ ! -s"/ec/crom.weekly/make_backup" ]
     then echo "backup shedule has been set to run weekly"
          echo "The exact runtime is in the /etc/crontab file"
	  exit 1
    f1}
function perform_backup{
	backup_path=$(cat /backup_loc.conf)
	echo "Starting backup...">$LOG_LOC
	while read dir_path do
	done < /backup_dirs.conf  echo "Backup Completed at:">> $LOG_LOC
	date >> $LOG_LOC

}

