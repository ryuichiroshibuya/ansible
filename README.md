ansible role file for centos6

example:
ansible-playbook -i inventory/production site.yml
ansible-playbook -i inventory/production webservers.yml
ansible-playbook -i inventory/production dbservers.yml

ansible-playbook -i inventory/production webservers.yml --limit 172.16.100.200
ansible-playbook -i inventory/production webservers.yml --tags nginx
ansible-playbook -i inventory/production webservers.yml --tags nginx --limit 172.16.100.200

# ssh use private-key 
ansible-playbook --private-key=~/Keys/ec.pem


|-- DBREADME.md
|-- README.md
|-- dbservers.yml
|-- fooapp
|-- group_vars
|   |-- all
|   |-- production
|   `-- webservers
|-- host_vars
|   |-- 172.16.100.20
|   |-- 172.16.100.200
|   |-- 172.16.100.201
|   `-- 172.16.100.202
|-- inventory
|   |-- local
|   |-- production
|   `-- stage
|-- library
|   `-- filter_plugins
|-- monitoring
|-- production
|-- roles
|   |-- common
|   |   |-- files
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- iptables.yml
|   |   |   |-- main.yml
|   |   |   |-- mysql.yml
|   |   |   |-- ntp.yml
|   |   |   |-- os.yml
|   |   |   |-- postfix.yml
|   |   |   `-- yum-upgrade.xml
|   |   |-- templates
|   |   |   |-- i18n.tpl
|   |   |   |-- keyboard.tpl
|   |   |   |-- ntp.conf.tpl
|   |   |   |-- resolv.conf.tpl
|   |   |   `-- selinux.tpl
|   |   `-- vars
|   |-- django
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- create-mysite.yml
|   |   |   |-- main.yml
|   |   |   |-- requestments.yml
|   |   |   `-- setup-uwsgi.yml
|   |   |-- templates
|   |   |   |-- uwsgi.ini
|   |   |   |-- uwsgi.sh
|   |   |   |-- uwsgi.shell
|   |   |   |-- uwsgi.sysconfig
|   |   |   `-- uwsgi.yaml
|   |   `-- vars
|   |       `-- main.yml
|   |-- mysql
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   `-- main.yml
|   |   |-- templates
|   |   `-- vars
|   |-- mysql-client
|   |   |-- files
|   |   |-- handlers
|   |   |   `-- main.yml
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- main.yml
|   |   |   `-- mysql-client.yml
|   |   |-- templates
|   |   `-- vars
|   |-- mysql-server
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- main.yml
|   |   |   `-- mysql-server.yml
|   |   |-- templates
|   |   `-- vars
|   |-- nginx
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- main.yml
|   |   |   |-- nginx-deploy.yml
|   |   |   `-- nginx.yml
|   |   |-- templates
|   |   |   |-- http.conf.tpl
|   |   |   `-- nginx.conf.tpl
|   |   `-- vars
|   |       `-- main.yml
|   |-- os-accout
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- django-account.yml
|   |   |   `-- main.yml
|   |   |-- templates
|   |   `-- vars
|   |-- pyenv
|   |   |-- files
|   |   |-- handlers
|   |   |-- meta
|   |   |-- tasks
|   |   |   |-- main.yml
|   |   |   |-- pyenv-django.yml
|   |   |   |-- pyenv.yml
|   |   |   |-- python-setup-django.yml
|   |   |   `-- python-setup.yml
|   |   |-- templates
|   |   |   `-- bashrc.tpl
|   |   `-- vars
|   |       `-- main.yml
|   `-- sshd
|       |-- files
|       |-- handlers
|       |-- meta
|       |-- tasks
|       |   |-- main.yml
|       |   `-- mod-sshdconf.yml
|       |-- templates
|       `-- vars
|-- site.yml
|-- stage
|-- utils
|   `-- init.sh
|-- webservers.yml
`-- webtier

73 directories, 64 files

