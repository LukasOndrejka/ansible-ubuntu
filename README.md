# Ansible Ubuntu setup
Ansible roles to setup Ubuntu desktop and Ubuntu server (14.04 and 16.04). This playbook is focused on quickly deploying a "ready to use" dev machine.

## Requirements
- Git (automatically installed with the provided setup.sh script)
- Ansible 2+ (automatically installed from [Ansible offical PPA](https://launchpad.net/~ansible/+archive/ubuntu/ansible) with the provided setup.sh script)
- wget or curl (for download setup.sh script)

## Setup
##### 1. Install Ansible (git and python) and download repository with:
```
wget -O- https://raw.githubusercontent.com/lukasondrejka/ansible-ubuntu/master/scripts/setup.sh | sh
```
or
```
curl -L https://raw.githubusercontent.com/lukasondrejka/ansible-ubuntu/master/scripts/setup.sh | sh
```
Repository will download to `~/.ansible/ansible-ubuntu`.

##### 2. Customize the playbook (`playbook.yml`) and  vars (`group_vars/all.yml`) to suit your needs
Every roles are disabled by default. For enable role remove hashtag.
Example:
```
roles:
  # - role1
   - role2
   - role3
```
`role1` is disabled but `role2` and `role3` is enabled.
Example of custom playbook: [lukasondrejka/my-ansible-playbook](https://github.com/lukasondrejka/my-ansible-playbook)

##### 3. Run ansible playbook with:
```
ansible-playbook playbook.yml
```

## Roles included
You can see all roles in roles folder.
