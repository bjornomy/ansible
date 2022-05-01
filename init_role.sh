#!/bin/bash

if [[ -z $1 ]]; then
  echo 'Syntax: ./init_role.sh <role>'
  exit 1
fi

p=roles/$1

mkdir -p $p/{tasks,defaults,templates,vars}
touch $p/{tasks,defaults,vars}/main.yml $p/templates/.gitkeep