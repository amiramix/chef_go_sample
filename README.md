Introduction
=====

Very basic set of scripts to deploy a sample `go` program over SSH using Chef and sh scripts.

Idea
-----

On local node:

1. Deploy the content of the `app` folder to the destination node using SSH
2. Remotely execute the `install.sh` script on the destination node

In the `install.sh` script:

1. Install required packages to execute Chef cookbooks
2. Execute the `default.rb` Chef cookbook using `chef-solo`

In the `default.rb` cookbook:

1. Install packages required to run the sample `go` program
2. Execute the sample `go` program `sample.go`

Prerequisites
-----

1. SSH keys set up so that `ssh root@destination.node` opens the ssh session without prompting for password (use `ssh-agent` if you want to keys with password)
2. Git installed on the host (from which the scripts are deployed to the destination node)

Usage
-----

    curl -s https://raw.githubusercontent.com/amiramix/chef_go_sample/master/init.sh | sh -s root@destination.node

Limitations
-----

Scripts have been developed and tested on a base FreeBSD server (without any ports or packages installed):

1. They don't use `sudo`, which is not present in the base. Installing and configuring `sudo` in addition to this sample program would be an easy, but unnecessary addition considering the purpose of this example.
2. Because of the same reason, some commands may not work as expected in GNU versions of those commands on Linux servers.
