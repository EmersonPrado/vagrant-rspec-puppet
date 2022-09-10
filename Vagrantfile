require 'yaml'
VMS = YAML.load_file('etc/vms.yaml')

Vagrant.configure("2") do |config|
  config.vbguest.auto_update = false
  VMS.each do |name, box|
    config.vm.define name do |vm|
      vm.vm.box = box
      vm.vm.provider 'virtualbox' do |virtualbox|
        virtualbox.memory = 384
        virtualbox.cpus = 1
      end
    end
  end
  config.vm.provision :shell do |shell|
    shell.name = 'Install Ruby and Bundler'
    shell.path = 'bin/post.sh'
  end
  config.vm.provision :shell do |shell|
    shell.name       = 'Install Rspec and dependencies'
    shell.privileged = false
    shell.inline     = 'cd /vagrant/rspec_test ; rm -f Gemfile.lock 2> /dev/null || true ; bundle install ; rm -f Gemfile.lock'
  end
end
