#
# Regular cron jobs for the datasync package
#
0 4	* * *	root	[ -x /usr/bin/datasync_maintenance ] && /usr/bin/datasync_maintenance
