#!/bin/bash

cat \
  <(cat ../playbook_template.yml) \
  <(for file in ../roles/*; do echo -e "    # - "${file##*/}; done) \
  > ../playbook.yml
