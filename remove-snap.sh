#!/bin/bash

echo "Removing snap..."

# Stop the daemon
sudo systemctl stop snapd && sudo systemctl disable snapd

# Uninstall
sudo apt purge -y snapd

# Tidy up dirs
sudo rm -rf /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd ~/snap

# Stop it from being reinstalled by 'mistake' when installing other packages
cat << EOF > no-snap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF

sudo mv no-snap.pref /etc/apt/preferences.d/
sudo chown root:root /etc/apt/preferences.d/no-snap.pref

# done
echo "Snap removed"
