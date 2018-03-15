# vagrant-centos7
` fantastic-octo-telegram` was the suggested name

# What it is

It's a hyper-v rebuild of the standard centos/7 image but adds cifs-utils so that you can mount your local dirs via SMB.

# What to do
- vagrant up
- vagrant halt
- Open Hyper-V manager, and disable the checkpoints on the image (it'll be called centos7)
    - Delete em as well.
- vagrant package
- Edit metadata.json to your hearts content.
- vagrant box add metadata.json
- vagrant box list
