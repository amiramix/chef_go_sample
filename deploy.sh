#!/bin/sh

# Usage: ./deploy.sh [host]

host="${1}"

rm app.tgz
tar -czf app.tgz app
scp app.tgz "$host:"
ssh "$host" 'rm -rf ~/app && tar -xzf app.tgz && cd ~/app && ./install.sh'
echo "done"
