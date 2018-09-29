#!/bin/sh
source check_OS.sh

check_OS

check_if_root_login


url="$1"
email="you email address "
filex=your file where will you save your backup
username="$3"
ipx="$4"
set [-ipx] [-o ipx] [--] [ipx="$4"]
serverusername="$5"
set [serverusername] [-su serverusername] [--] [serverusername="$5"]
TIMEX=$(date +"%d-%m-%Y")


declare -a usernamex=( user1 user2 )


    rm -rf /home/$username/public_html/$filex/*.tar.gz


   
if [ \( -n "$4" \) -o \( -n "$5" \) ]

	then


       source function_backup.sh
       
       back_up

 

else
       source function_backup.sh
       back_up

fi 
