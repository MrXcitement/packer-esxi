Vagrant.require_version '>= 1.6.2'

Vagrant.configure('2') do |config|
  # We're using the root user here.
  config.ssh.username = 'root'
  # Set default shell to SH.
  config.ssh.shell = 'sh'

  # Vagrant doesn't support insert key on ESXi so let's stick with the unsecure
  # key for now.
  config.ssh.insert_key = false

  # Do not sync default /vagrant folder on ESXi.
  config.vm.synced_folder '.', '/vagrant', disabled: true

  # We don't have NFS working inside ESXi so we flag this just in case.
  config.nfs.functional = false

  config.vm.provider "vmware_desktop" do |v|
    # Use paravirtualized virtual hardware on VMW hypervisors.
    v.vmx['ethernet0.virtualDev'] = 'vmxnet3'
    v.vmx['memsize'] = '4096'
    v.vmx['numvcpus'] = '2'
    # Enable nested virtualization.
    v.vmx['vhv.enable'] = 'true'
  end
end
