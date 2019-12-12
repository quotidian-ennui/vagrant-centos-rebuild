# vagrant-centos
` fantastic-octo-telegram` was the suggested name

# What it is

It's a hyper-v rebuild of the `generic/centos8` image but adds cifs-utils so that you can mount your local dirs via SMB; doesn't use centos/8 since it they aren't building it for Hyper-V

# What to do
- vagrant up
- vagrant halt
- Open Hyper-V manager, and disable the checkpoints on the image (it'll be called centos8)
    - Delete em as well.
- vagrant package
- Edit metadata.json to your hearts content.
- vagrant box add metadata.json
- vagrant box list
