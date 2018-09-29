#!/bin/bash

function back_up()  {

for i in "${usernamex[@]}"

		do

		/scripts/pkgacct $i > out.txt

	mv /home/cpmove-$i.tar.gz /home/$username/public_html/$filex/cpmove-$i-$TIMEX.tar.gz


	chmod 775 /home/$username/public_html/$filex/cpmove-$i-$TIMEX.tar.gz

FILE=/home/$username/public_html/$filex/cpmove-$i-$TIMEX.tar.gz

 FILESIZE1=$(stat -c%s "/home/$username/public_html/$filex/cpmove-$i-$TIMEX.tar.gz")

done

}

function move_back_up_to_another_server() {

ssh $serverusername@$ipx

        wget $url/$filex/cpmove-$i-$TIMEX.tar.gz

}

function check_moved_back_up() {

if [[ $FILESIZE1 == *"$FILESIZE2"* ]]

then
   
       logout 
      
     	 printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is ready now $url/$filex/cpmove-$i-$TIMEX.tar.gz and we already saved it on your storage :) " | ssmtp $email
	else
      
      rm -rf $cpmove-$i-$TIMEX.tar.gz -y

      wget $url/$filex/cpmove-$i-$TIMEX.tar.gz

FILESIZE3=$(stat -c%s "$cpmove-$i-$TIMEX.tar.gz")

    if [[ $FILESIZE1 == *"$FILESIZE3"* ]]
    
    then 
    logout 
      
     	 printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is ready now $url/$filex/cpmove-$i-$TIMEX.tar.gz and we already saved it on your storage :) " | ssmtp $email
else
printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is failed please try to take your backup manual" | ssmtp $email

fi

fi

}

#function sendmail_if_moved_backup_done_successfully() {

 #printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is ready now $url/$filex/cpmove-$i-$TIMEX.tar.gz and we already saved it on your storage :) " | ssmtp $email
	
#}

#function sendmail_if_moved_backup_unsuccessfully() {
#   printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is failed please try to take your backup manual" | ssmtp $email
#}