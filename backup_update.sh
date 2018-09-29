#!/bin/bash
source check_OS.sh

check_OS

check_if_root_login


url="$1"
email="$2"
filex="$3"
username="$4"
ipx="$5"
serverusername="$6"
TIMEX=$(date +"%d-%m-%Y")


declare -a usernamex=( user1 user2 )


    rm -rf /home/$4/public_html/$3/*.tar.gz


if [ ! -z "$4" ] && [ ! -z "$5" ];

        then

       source function_backup.sh

       back_up



else
       source function_backup.sh
       back_up

fi
