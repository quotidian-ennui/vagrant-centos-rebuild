require 'yaml'
dir = File.dirname(File.expand_path(__FILE__))
settings = YAML::load_file("#{dir}/defaults.yml")
if File.exist?("#{dir}/env.yml")
    env_settings = YAML::load_file("#{dir}/env.yml")
    settings.merge!(env_settings)
end

Vagrant.configure(2) do |config|
  config.vm.box = "centos/6"
  config.vm.provider "hyperv"

  config.vm.provider "hyperv" do |hyperv|
    hyperv.vmname = settings["vm"]["name"]
    hyperv.mac = settings["vm"]["mac"]
    hyperv.memory = settings["vm"]["memory"]
    hyperv.cpus = settings["vm"]["cpu"]
  end

  config.vm.provision "shell", path: "provision.sh"

end
