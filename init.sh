#!/bin/sh

if [ $# -eq 0 ]
then
  echo "No arguments supplied, usage:"
  echo "curl -s https://raw.githubusercontent.com/amiramix/chef_go_sample/master/init.sh | sh -s root@destination.node"
  echo "Where root@destination.node is the node on which the sample program should be installed and started" 
  exit 1
fi

git clone https://github.com/amiramix/chef_go_sample.git
cd chef_go_sample
./deploy.sh "$1"

