#!/bin/bash

echo For a fresh install lets begin with an system update and if you wish to continue please select the appropriate option in next line.  
echo Do you wish to upgrade - 'Yes' to continue and 'No' to exit the script. 
read decesion
if [ $decesion = "Yes" ]
     then
       echo please choose  your type of operating system from the given below options
     else     
       echo Thank you
fi
echo 'a = debian based linux'
echo 'b = redhat based linux'
echo 'c = arch linux'
echo 'd = opensuse'
echo 'e = gentoo'
echo
read option
	case $option in
a) apt update && apt upgrade -y;; 
b) yum update && yum upgrade -y;;
c) pacman -Syy;;
d) zypper update -y
e) emaint --auto sync && emerge --ask --verbose --update --deep --newuse @world ;;
	esac
echo 
echo We have just update your application.
