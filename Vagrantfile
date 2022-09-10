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
end
