#!/bin/bash

case "$(cat /proc/version)" in
  *'Debian'*)
    apt update
    apt -y install ruby ruby-bundler
  ;;
  *'Red Hat'*)
    dnf -y install ruby rubygem-bundler
  ;;
  *)
    echo 'Unsupported distro' >&2
    exit 1
  ;;
esac
