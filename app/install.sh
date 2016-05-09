#!/bin/sh

chef_binary=/usr/local/bin/chef-solo

# vanilla system?
if [ ! -f "$chef_binary" ]
then
    pkg install -y devel/ruby-gems
    gem install -N chef
fi

"$chef_binary" -c solo.rb -j solo.json

