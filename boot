#!/bin/sh

toolboxdir="/var/lib/boot2docker/docker-machine-toolbox"

echo 'Load config files ...'
rm -f /etc/motd
ln -s $toolboxdir/configs/motd /etc/motd
rm -f /etc/profile.d/boot2docker.sh
ln -s $toolboxdir/configs/boot2docker.sh /etc/profile.d/boot2docker.sh

echo 'Load dotfiles ...'

# root user
rm -f /root/.gitconfig
ln -s $toolboxdir/dotfiles/gitconfig /root/.gitconfig

# docker user
su - docker -c '
rm -f /home/docker/.gitconfig
ln -s /var/lib/boot2docker/docker-machine-toolbox/dotfiles/gitconfig /home/docker/.gitconfig
rm -f /home/docker/.ashrc
ln -s /var/lib/boot2docker/docker-machine-toolbox/dotfiles/ashrc /home/docker/.ashrc
'

echo 'Load bin files ...'
rm -f /usr/bin/bootsync-gen
chmod 755 $toolboxdir/bin/bootsync-gen
ln -s $toolboxdir/bin/bootsync-gen /usr/bin/bootsync-gen
