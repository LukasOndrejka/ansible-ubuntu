#!/bin/bash

cat \
  <(echo -e "---\n") \
  <(cat ../playbook_template.yml | egrep -v '^(\s*\#|---|[[:space:]]*$)') \
  <(for file in ../roles/*; do echo -e "    # - "${file##*/}; done) \
  > ../playbook.yml
