#!/bin/bash
echo "YouTube-Viewer Installer Script"
read -r -p "Are You Sure? [Y/n] " input
case $input in
    [yY][eE][sS]|[yY])
	echo "Installing...."
	git clone https://github.com/trizen/youtube-viewer.git
	cd youtube-viewer
	cpan Module::Build
	sudo perl Build.PL
	sudo perl Build installdeps
	sudo perl Build install
	echo "Script By Joel"
 ;;
    [nN][oO]|[nN])
	echo "Aborted Installation"
	echo "Script By Joel"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
