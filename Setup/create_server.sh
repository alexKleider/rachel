
# Before sourcing this file:
#  1: be sure it and it's dependencies are in the cwd.
#  2: have a look at hostapd.conf and modify accordingly if you plan to
#  have more than one server operating within range of each other.
#  This applies to SSID and, less critically, to the channel (6, 1, 11)
#  you plan to use.

# File last modified Sun Aug 30 18:35:22 PDT 2015

# Rename originals and then copy over the following:
mv /etc/default/hostapd /etc/default/hostapd.original
cp hostapd /etc/default/hostapd
# mv /etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf.original
cp hostapd.conf /etc/hostapd/hostapd.conf
mv /etc/network/interfaces /etc/network/interfaces.original
cp interfaces.tanz /etc/network/interfaces.tanz
cp interfaces.static /etc/network/interfaces.static
cp working-interfaces /etc/network/interfaces
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.original
cp dnsmasq.conf /etc/dnsmasq.conf
# Modify /etc/sysctl.conf: uncomment net.ipv4.ip_forward=1
sed -i -r "s/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g" /etc/sysctl.conf
# echo "Setting up the firewall rules."
source firewall.sh
echo "The firewall rules just set and about to be saved are:"
iptables -t nat -S
iptables -S
source save.sh
# The following is done in preparation for copying the mp4 to webm
# converted Rachel /var/www directory hierarchy over to the newly
# configured Raspberry Pi.
cp /var/www/index.html /var/www/index.original
