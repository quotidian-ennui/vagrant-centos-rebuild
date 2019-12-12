#!/bin/bash

sudo rpm -Uhv http://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum -y update
sudo yum -y install unzip rng-tools wget haveged cifs-utils
systemctl enable haveged.service
systemctl restart haveged.service