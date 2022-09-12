#!/bin/bash

case "$(cat /proc/version)" in
  *'Debian'*)
    apt update
    apt -y install ruby ruby-bundler
  ;;
  *'Red Hat'*)
    dnf -y install ruby rubygem-bundler
  ;;
  *'SUSE'*)
    zypper refresh
    zypper install -y ruby $(
      zypper search /^ruby[[:digit:]].*-rubygem-bundler$/ |
      awk '/rubygem-bundler/ { print $2 }'
    )
  ;;
  *)
    echo 'Unsupported distro' >&2
    exit 1
  ;;
esac
