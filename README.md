# Vagrant playground for tests in Puppet modules

#### Table of contents

1. [Description](#description)
1. [Setup](#setup)
    1. [Prereqs](#prereqs)
    1. [Project download](#project-download)

## Description

This project provides a Vagrant environment containing 3 VMs with vanilla installs of Debian, RockyLinux and OpenSUSE, allowing the user to play around with automated tests in Puppet modules

## Setup

### Prereqs

- Linux host
- Git
- Ruby
- Vagrant

### Project download

- First time

    ```Shell
    cd <Parent of project root directory>
    git clone git@github.com:EmersonPrado/vagrant-rspec-puppet.git
    cd vagrant-rspec-puppet
    ```

- Updates

    ```Shell
    cd <Project root directory>
    git pull
    ```
