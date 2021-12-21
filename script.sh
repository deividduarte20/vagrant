#!/bin/bash

cp /vagrant/id_rsa.pub .
cat /vagrant/id_rsa.pub >> .ssh/authorized_keys
