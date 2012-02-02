#!/bin/sh
# bam
#


####################################
#Installation for required Software#
####################################

echo ########################
echo # Installing Software  #
echo ########################
apt-get install dnsmasq ruby rubygems build-essential openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison pptpd unzip --yes

echo ########################
echo # Installing RubyGems  #
echo ########################
gem install eventmachine
gem install CFPropertyList
gem install httparty
gem install json
gem install uuidtools
