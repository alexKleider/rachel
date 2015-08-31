# Before sourcing this file, be sure
# it and it's dependencies are in the cwd.

# Last updated Sun Aug 30 18:24:29 PDT 2015

echo "updating, upgrading and installing more software....."
echo "You will be asked to confirm various steps along the way"
echo "so keep checking the screen to see if it is waiting for you."
apt-get update && apt-get upgrade && apt-get install \
iw hostapd dnsmasq apache2 vim vim-scripts
apt-get install dnsutils screen
# Some of the above are not essential for proper functioning of the
# server but I like to have them.
# The need for the following command is expected to go away before long.
rpi-update
# I have found that the following do not need to be installed:
# apt-get install python-m2crypto curl unzip php5 python-psutil
cp .vimrc /root/
cp .vimrc /home/pi/

