#!/bin/bash

sudo sed -i "s/^JAVA_ARGS=.*/JAVA_ARGS=\"-Djava.awt.headless=true -Djenkins.install.runSetupWizard=false\"/g" /etc/default/jenkins