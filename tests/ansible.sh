#!/bin/bash
export ANSIBLE_FORCE_COLOR=1
apt-get update
apt-get install -y python-pip
pip install ansible
echo -n | ansible-playbook misp.yml -vvv -i tests/inventory -e 'servername: localhost' -e 'enable_auto_backup: yes' -e 'install_modules: yes'
