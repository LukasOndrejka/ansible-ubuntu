#!/bin/bash

DIR=~/.ansible
REPOSITORY="https://github.com/lukasondrejka/ansible-ubuntu.git"

sudo apt-get install -y git python python-dev

if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi

cd ~
mkdir $DIR
cd $DIR
git clone $REPOSITORY

cd $DIR/ansible-ubuntu/scripts
chmod u+x *.sh
bash playbook.sh group_vars.sh

echo ""
echo "Customize the playbook (ansible-desktop.yml) and the vars (group_vars/all.yml) to suit your needs, then run ansible with:"
echo "  ansible-playbook playbook.yml  "
echo ""
