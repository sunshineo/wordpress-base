FROM tutum/wordpress-stackable:latest

# Plugins download is done outside of docker build for now due to
# https://github.com/docker/docker/issues/13117
# This also means I cannot automatically build this project on docker hub
# Once that is fixed, remove this line and un-comment commands below
ADD plugins/ /app/wp-content/plugins/

# Currently no themes yet
# WORKDIR /app/wp-content/plugins
# RUN sudo rm -Rf akismet
# RUN sudo rm hello.php

# The base does not have unzip unfortunately
# RUN sudo apt-get update
# RUN sudo apt-get install -qq zip
# RUN sudo apt-get install -qq unzip

# Think of this file as: bower.json
# ADD plugins.txt ./

# Think of the below as: npm install bower
# https://github.com/sunshineo/wppatm
# RUN curl -sSLO https://raw.githubusercontent.com/sunshineo/wppatm/master/install.sh
# RUN chmod +x install.sh

# Think of the below as: bower install
# RUN install.sh
