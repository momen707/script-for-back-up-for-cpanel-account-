#!/bin/bash

function back_up()  {

for i in "${usernamex[@]}"

		do

		/scripts/pkgacct $i > out.txt

	mv /home/cpmove-$i.tar.gz /home/$4/public_html/$3/cpmove-$i-$TIMEX.tar.gz


	chmod 775 /home/$4/public_html/$3/cpmove-$i-$TIMEX.tar.gz

FILE=/home/$4/public_html/$3/cpmove-$i-$TIMEX.tar.gz

 FILESIZE1=$(stat -c%s "/home/$4/public_html/$3/cpmove-$i-$TIMEX.tar.gz")

done

}

function move_back_up_to_another_server() {

ssh $6"@"$5

        wget $1/$3/cpmove-$i-$TIMEX.tar.gz

}

function check_moved_back_up() {

if [[ $FILESIZE1 == "$FILESIZE2" ]]

then
   
       logout 
      
     	 printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is ready now $1/$3/cpmove-$i-$TIMEX.tar.gz and we already saved it on your storage :) " | ssmtp $2
	else
      
      rm -rf $cpmove-$i-$TIMEX.tar.gz -y

      wget $1/$3/cpmove-$i-$TIMEX.tar.gz

FILESIZE3=$(stat -c%s "$cpmove-$i-$TIMEX.tar.gz")

    if [[ $FILESIZE1 == *"$FILESIZE3"* ]]
    
    then 
    logout 
      
     	 printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is ready now $1/$3/cpmove-$i-$TIMEX.tar.gz and we already saved it on your storage :) " | ssmtp $2
else
printf "Subject: backup-report-$TIMEX\n\nYour backup for $i is failed please try to take your backup manual" | ssmtp $2

fi

fi

}
