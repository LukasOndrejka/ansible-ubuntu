#!/bin/bash
cat \
  <(echo -e "---\n\n- name: Ansible playbook\n  hosts: localhost\n  roles:") \
  <(for file in *; do echo -e "    # - "${file##*/}; done) \
  > ../playbook.yml
