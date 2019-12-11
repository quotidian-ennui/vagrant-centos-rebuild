#!/bin/bash

sudo rpm -Uhv http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y -q update
sudo yum -y -q install unzip rng-tools wget yum-plugin-fastestmirror yum-plugin-remove-with-leaves yum-plugin-protectbase haveged cifs-utils
systemctl enable haveged.service
systemctl restart haveged.service

