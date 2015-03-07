#!/bin/bash -x
set -e
cd /home/ec2_user/Ansible
touch production
touch stage

mkdir -p group_vars
mkdir -p host_vars
mkdir -p library/filter_plugins
touch webservers.yml
touch dbservers.yml
mkdir -p roles/{common,mysql,django,nginx,django}/{tasks,files,templates,vars,handlers,meta}
mkdir -p webtier
mkdir -p monitoring
mkdir -p fooapp
