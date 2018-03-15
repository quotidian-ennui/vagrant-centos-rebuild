#!/bin/bash

sudo rpm -Uhv https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
sudo rpm -Uhv https://centos6.iuscommunity.org/ius-release.rpm
sudo yum -y install unzip rng-tools wget yum-plugin-fastestmirror yum-plugin-remove-with-leaves yum-plugin-protectbase haveged cifs-utils git2u
service haveged restart
chkconfig haveged on

