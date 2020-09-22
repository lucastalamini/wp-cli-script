#!/bin/bash

########################################################################################################################################################
#                                                                                                                                                      #
# Name: wp-cli.sh                                                                                                                                      #
#                                                                                                                                                      #
# Author: Lucas Talamini (lucastalamini1994@gmail.com)                                                                                                 #
# Date: 21/09/2020                                                                                                                                     #
#                                                                                                                                                      #
# Description: The script installs wp-cli in a given directory.                                                                                        #
#                                                                                                                                                      #
#                                                                                                                                                      #
#                                                                                                                                                      #
# Use: bash <(curl -sk https://raw.githubusercontent.com/lucastalamini/wp-cli-script/master/wp-cli.sh)                                                 #
#                                                                                                                                                      #
########################################################################################################################################################

    if [[`whoami` = 'root']]; then 
        wget -q  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /tmp/wp-cli.phar
        chmod +x wp-cli.phar 
        mv -v wp-cli.phar /usr/local/bin/wp
        echo "WP-CLI installed successfully." 
    else
        echo "You must be root to do this."
        exit
    fi
