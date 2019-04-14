#!/bin/bash

sudo sed -i "s/^JAVA_ARGS=.*/JAVA_ARGS=\"-Djava.awt.headless=true -Djenkins.install.runSetupWizard=false\"/g" /etc/default/jenkins
sudo mkdir -p /var/lib/jenkins/init.groovy.d
sudo chown -R packer /var/lib/jenkins/init.groovy.d
