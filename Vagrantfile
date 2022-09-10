require 'yaml'
VMS = YAML.load_file('etc/vms.yaml')

Vagrant.configure("2") do |config|
  VMS.each do |name, box|
    config.vm.define name do |vm|
      vm.vm.box = box
    end
  end
end
