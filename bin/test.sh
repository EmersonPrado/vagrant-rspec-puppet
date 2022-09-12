#!/bin/bash

for vm in $(
  vagrant status |
  awk '$2 == "running" { print $1 }'
) ; do
  echo "$vm"
  vagrant ssh -c '
    cd /vagrant/rspec_test
    bundle exec rake validate lint spec
    rm -f Gemfile.lock
  ' "$vm"
done
