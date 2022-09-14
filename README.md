# Vagrant playground for tests in Puppet modules

#### Table of contents

1. [Description](#description)
1. [Setup](#setup)
    1. [Prereqs](#prereqs)
    1. [Project download](#project-download)
    1. [VMs management](#vms-management)
    1. [VMs configuration](#vms-configuration)
1. [Playing inside the VMs](#playing-inside-the-VMs)
1. [Module and test specs](#module-and-test-specs)
    1. [Location and naming](#location-and-naming)
    1. [Atom](#atom)
1. [References](#References)

## Description

This project provides a Vagrant environment containing 3 VMs with vanilla installs of Debian, RockyLinux and OpenSUSE, allowing the user to play around with automated tests in Puppet modules

## Setup

### Prereqs

- [Linux](https://en.wikipedia.org/wiki/Linux) host
- [Git](https://git-scm.com/)
- [Ruby](https://www.ruby-lang.org/)
- [Vagrant](https://www.vagrantup.com/)

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

### VMs configuration

`vagrant up` command will bring in VMs and install all necessary pieces of software:
- Ruby
- Ruby Bundler
- Rspec and its dependencies

Checkout `Vagrantfile` and `bin/post.sh` to see how it's done

## Playing inside the VMs

You can get in every VM up and running with `vagrant ssh <VM>`. There, you can find this whole project under `/vagrant` (an automatic mount point which Vagrant provides by default to ease stuff). Also, you can play with OS, packages, Gems, code, tests, etc., just like you'd do with any Linux host.

Keep in mind the `/vagrant` mount point is shared - any change in a VM will show in all the others, and in the host repository.

Once satisfied with playing, just enter `exit`, and you're back to your workstation. If needed, you can restart (`vagrant reload`), reprovision (`vagrant provision`) or even rebuild (`vagrant destroy && vagrant up`) the VMs. This is the exact greatness of Vagrant.

## Module and test specs

> See [References](#references) section for the docs mentioned below

### Location and naming

All Puppet code and tests should go inside `<Project root dir>/rspec_test`.

Be sure to follow official conventions for Puppet's directories, files and naming. Also, naming conventions inside official rspec-puppet docs are mandatory for the tests to find their target code.

### Atom

For those using [Atom](https://atom.io/) editor, I intentionally made (via `.atomignore`) the Puppet code hidden when one opens the root project directory in Atom. The idea is to keep infrastructure code apart from automation code. So, to manage module and specs, just open `<Project root dir>/rspec_test`. Or, if you prefer everything together, just remove line `rspec_test/` from `.atomignore`.

## Fire tests

## References

- [Puppet official docs](https://puppet.com/docs/puppet/7/puppet_index.html)
    - [Directories and files](https://puppet.com/docs/puppet/7/dirs_important_directories.html)
    - [Naming conventions](https://puppet.com/docs/puppet/7/modules_fundamentals.html)
    - [Language](https://puppet.com/docs/puppet/7/puppet_language.html)
- Puppet Blog
    - [Unit testing with rspec-puppet - for beginners (Blog Puppet)](https://puppet.com/blog/unit-testing-rspec-puppet-for-beginners/)
- [rspec-puppet official page](https://rspec-puppet.com/)
    - [All docs](https://rspec-puppet.com/documentation/)
- Elsewhere
    - Setting up Puppet module testing from scratch - Alex Harvey (**great and highly recommended series**)
        - [Part I, Puppet-syntax, Puppet-lint and Rspec-puppet](https://alexharv074.github.io/puppet/2016/05/08/setting-up-puppet-module-testing-from-scratch-part-i-puppet-syntax-puppet-lint-and-rspec-puppet.html)
        - [Part II, Beaker for module testing](https://alexharv074.github.io/puppet/2016/05/13/setting-up-puppet-module-testing-from-scratch-part-ii-beaker-for-module-testing.html)
        - [Part III, Travis CI](https://alexharv074.github.io/puppet/2016/05/16/setting-up-puppet-module-testing-from-scratch-part-iii-travis-ci.html)
