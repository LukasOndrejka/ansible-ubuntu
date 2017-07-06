#!/bin/bash

cat \
  <(echo -e "---\n") \
  <(cat ../roles/*/defaults/main.yml | grep -v '^---$') \
  > ../group_vars/all.yml
