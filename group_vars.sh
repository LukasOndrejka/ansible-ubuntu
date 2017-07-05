#!/bin/bash

cat \
  <(echo -e "---\n\naptcachetime: 3600") \
  <(cat ./roles/*/defaults/main.yml | grep -v '^---$') \
  > ./group_vars/all.yml
