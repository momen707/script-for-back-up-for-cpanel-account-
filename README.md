﻿# script-for-back-up-for-cpanel-account-

Hello 

you can use our script for backup any account on cpanel even if your license is expired it doesn't matter 
you can backup and move this back to another server 

to use this script you have Two cases

first cases 

if you want to move this backup to another server 

use this commandline 

backup_update.sh your_url your_email_address your_file_path_where_will_you_save_your_backup your_username_at_cpanel your_storage_ip your_server_username

example :

backup_update.sh example.com example@example.com /home/cpmove-$i.tar.gz /home/username_example/public_html/example/ username_example 127.0.0.1 example_server username 

The second case

if you don't want to move this backup to another server 

use this commandline 

backup_update.sh your_url your_email_address  your_file_path_where_will_you_save_your_backup your_username_at_cpanel 

example.com example@example.com /home/cpmove-$i.tar.gz /home/username_example/public_html/example/ username_example


please note 


you have should to install ssmtpn with right config 


thanks 
