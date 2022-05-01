#!/bin/bash

if [[ -z $1 ]]; then
  echo 'Syntax: ./init_inventory.sh <inventory>'
  exit 1
fi

p=inventories/$1

mkdir -p $p/{host_vars,group_vars/all}
touch $p/hosts $p/group_vars/all/{vars.yml,vault.yml} $p/host_vars/.gitkeep