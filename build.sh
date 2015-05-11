#!/bin/bash

# This script is because of https://github.com/docker/docker/issues/13117
# Once that is fixed, just have Dockerfile will be enough
rm -Rf plugins
mkdir plugins
cp plugins.txt plugins
cd plugins
curl -sSLO https://raw.githubusercontent.com/sunshineo/wppatm/master/install.sh
chmod +x install.sh
./install.sh
cd ..
docker build -t sunshineo/wordpress-base .