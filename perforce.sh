#!/bin/bash

# Fetch P4 Helix Core CLI
wget -qO - https://package.perforce.com/perforce.pubkey | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/perforce.list
deb http://package.perforce.com/apt/ubuntu focal release
EOF

sudo apt-get update
echo "yes" | sudo apt-get install helix-p4d

# Create folders to test p4 build on 
mkdir test-p4 

# Go into the directory test-p4 and add a .travis.yml file to it (https://github.com/Montana/travis-perforce-setup-bash/blob/master/.travis.yml.patch) - here's one I made for you.

# Create a ~/p4 folder, then ~/p4/p4config.txt file 
mkdir ~/p4 
mkdir ~/p4/p4config.txt 
export P4CONFIG=~/p4/p4config.txt 

# Create the p4config.txt file, and populate it with generic information that you must add your variables into
echo "P4PORT=localhost:16666
P4USER=testuser
P4CHARSET=utf8
P4CLIENT=testuserspace001" 
>> ~/p4/p4config.txt
