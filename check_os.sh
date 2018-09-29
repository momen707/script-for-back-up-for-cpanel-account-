#!/bin/bash


function check_OS()  {

OS=$(/usr/local/cpanel/cpanel -V 2>/dev/null)

	echo "checking"

if [ "$OS" ];

	then

      echo "cpanel were found"
	  
	else

       echo "you must have a cpanel in centos to run this script with out any problem"
	   
      exit 1
	  
	fi
}

function check_if_root_login() {
    
if [[ $EUID -ne 0 ]]; 

    then

      echo "This script must be run as root" 
   
     exit 2
	 
   fi
