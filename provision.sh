#!/bin/bash

# Visit http://warpspeed.io for complete information.
# (c) Turner Logic, LLC. Distributed under the GNU GPL v2.0.

# Setup github repo to pull from.
REPOPATH="warpspeed/warpspeed"

# Ensure git is installed.
apt-get -y install git-core

# Clone warpspeed repository if it is not present.
if [ ! -d "/home/vagrant/.warpspeed" ]; then
    git clone --depth=1 https://github.com/$REPOPATH.git /home/vagrant/.warpspeed
fi

# Update permissions on warpspeed directory.
chown -R vagrant:vagrant /home/vagrant/.warpspeed

# Run the warpspeed vagrant provisioner and pass along all the args.
source /home/vagrant/.warpspeed/provision-vagrant.sh "$@"
