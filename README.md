# Cloudlet Platform Vagrant Development Environment Setup GuideEdit

## Introduction

Vagrant (http://www.vagrantup.com/) is free and open-source software for creating and configuring virtual development environments. It can be considered a wrapper around virtualization software such as VirtualBox and configuration management software such as Chef, Salt, Puppet and bash scripts. I've created a Vagrantfile that builds an ubuntu vm with all the applications and tools required to execute the Cloudlet Platform code. Using one of the built in features it allow you to develop your code on the host machine and evaluate/run it on the client vm.

Our Vagrant image has the following tools and applications installed: node, ZeroMQ, couchDB, and Mongrel2. It also has a configurable shared folder that allows you to point to your OPENi repos on the host machine from within the client.


## Preparation

Some people may have difficulty with the ssh forward agent feature, to address this issue add your SSH key to host ssh-agent.

    key_file=~/.ssh/id_rsa

    # Add if not already added
    [[ -z $(ssh-add -L | grep $key_file) ]] && ssh-add $key_file
    

You should also add the following entry into your /etc/hosts file.

   192.168.33.10 dev.openi-ict.eu


## Setup

Clone the openi_dev_env project on the git repo.

    git clone git@gitlab.openi-ict.eu:openi_dev_env.git


Modify the parameters at the top of the Vagrant file to suit your system.

    VAGRANTFILE_API_VERSION = "2"
    OPENI_REPO_PATH         = "/Users/dmccarthy/work/openi/wp4"
    SSH_KEY_PATH            = "/Users/dmccarthy/.ssh/id_rsa"
    CPU_ALLOC               = 4
    RAM_ALLOC               = 4096
    CLIENT_IP_ADDRESS       = "192.168.33.10"

Once you are happy with your parameters you execute the following commands to download and provision the vm. Note: the first time that you run vagrant up it could take up to an hour to execute.

    vagrant up

    vagrant halt

    vagrant up


## Post Setup

Once the 

    vagrant ssh

    cd repos/mongrel2

    sh startMongrel.sh

    cd ../data_api/

    node lib/local-runner.js


## Troubleshooting

If you have difficulty running the node applications try deleting their node_modules folder and executing npm install again. One of the dependencies links to a file on the host operating system, deleting the folder from within vagrant and rebuilding it will link to the client operating system.

## Links
http://earlyandoften.wordpress.com/2012/09/06/vagrant-cheatsheat/