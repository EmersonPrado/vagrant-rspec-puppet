#!/bin/bash

for vm in $(
  vagrant status |
  awk '$2 == "running" { print $1 }'
) ; do
  echo "$vm"
  vagrant ssh -c 'cd /vagrant/rspec_test ; rspec spec/' "$vm"
done
