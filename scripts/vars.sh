#!/bin/bash

cat \
  <(echo -e "---\n") \
  <(cat ../roles/*/defaults/main.yml | egrep -v '^(---|[[:space:]]*$)') \
  > ../group_vars/all.yml
