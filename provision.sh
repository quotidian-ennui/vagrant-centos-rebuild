#!/bin/bash

sudo rpm -Uhv http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -Uhv https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y install unzip rng-tools wget yum-plugin-fastestmirror yum-plugin-remove-with-leaves yum-plugin-protectbase haveged cifs-utils git2u
systemctl enable haveged.service
systemctl restart haveged.service

