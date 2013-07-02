
Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.forward_port 80, 8080
  config.vm.network :hostonly, "10.0.0.10", :netmask => "255.255.0.0"
  config.vm.provision :puppet, :module_path => "modules"
  config.vm.share_folder "repo", "/usr/local/src/ppladdressbook.org/", "./", :create => true, :nfs => true
end

