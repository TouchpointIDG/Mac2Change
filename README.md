# Mac2Change

This script was designed to be run as a startup script on OS X, but it can still be run independently to change the MAC address of your device's network interface. The interface may need to be changed at the top of the script depending on your device. It is also possible to change more than one interface by modifying this script.

THIS FILE MUST BE RUN AS ROOT IF BEING USED AS A STARTUP SCRIPT. The simplest way to do this is detailed below.

To make this script run at startup, the file ending in plist needs to be modified to point to where you are storing the script on your device. Then the plist file needs to be placed in the /Library/LaunchDaemons directory and loaded by using the launchctl command like this: 
sudo launchctl load /Library/LaunchDaemons/com.admin.changeMACOnLogin.plist
