#!/bin/sh
# bam
#


####################################
#Installation for required Software#
####################################

echo ########################
echo # Installing Software  #
echo ########################
sudo apt-get install dnsmasq ruby rubygems build-essential openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison unzip --yes

echo ########################
echo # Installing RubyGems  #
echo ########################
sudo gem install eventmachine
sudo gem install CFPropertyList
sudo gem install httparty
sudo gem install json
sudo gem install uuidtools

