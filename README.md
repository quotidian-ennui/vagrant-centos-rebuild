# vagrant-centos6
` fantastic-octo-telegram` was the suggested name

# What it is

It's a hyper-v rebuild of the standard centos/6 image but adds cifs-utils so that you can mount your local dirs via SMB (but only SMBv1 because CentOS 6 cifs-utils doesn't play nice). So, if you're wary of stuff like WannaCry you aren't going to doing that now are you...

# What to do
- vagrant up
- vagrant halt
- Open Hyper-V manager, and disable the checkpoints on the image (it'll be called centos6)
    - Delete em as well.
- vagrant package
- Edit metadata.json to your hearts content.
- vagrant box add metadata.json
- vagrant box list
