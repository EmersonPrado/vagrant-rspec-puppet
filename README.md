# Vagrant playground for tests in Puppet modules

#### Table of contents

1. [Description](#description)
1. [Setup](#setup)
    1. [Prereqs](#prereqs)
    1. [Project download](#project-download)
    1. [VMs management](#vms-management)

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

### VMs management

```Shell
# Vagrant help
vagrant -h              # Lists common Vagrant commands
vagrant list-commands   # Lists all Vagrant commands
vagrant <Command> -h    # Shows specific command help

# General actions
vagrant status      # Informs all VMs statuses
vagrant up          # Turns all VMs on, creating when necessary
vagrant up --no-provision   # Idem, without configuration steps
vagrant provision   # Runs configuration steps again in all VMs
vagrant halt        # Shuts all VMs down
vagrant reload      # Restarts all VMs
vagrant destroy     # Stops and deletes all VMs

# Runs actions for selected VMs
vagrant <Command> <VM> [ <VM> ... ]                 # Exact match(es)
vagrant <Command> /<Pattern>/ [ /<Pattern>/ ... ]   # Regular expression match(es)

# Access VMs
vagrant ssh \{ <VM> | /<Pattern>/ \}              # Enters SSH session
# Exit with 'exit' command
vagrant ssh -c <Command> \{ <VM> | /<Pattern>/ \} # Executes single command
```
