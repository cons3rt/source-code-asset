#!/bin/bash

# Sample Asset Installation Script
#
# Purpose: Automate the installation of your application using
# your build artifacts.
#
# Note: This script is not limited to bash or shell, please use the
# scripting language or configuration management language of your
# preference (e.g. python, ruby, puppet, chef).
#
# For Windows:
# 1. Replace this script with a script that runs on Windows
# 2. Update the "installScript" property in asset.properties with
#    the updated script file name
#
# NOTE: This script executes on YOUR DEPLOYED SYSTEM (not the
# CONS3RT build service)

# In this example, we simply copy the jar files to /opt on Linux

find ${ASSET_DIR}/media -name '*.jar' -exec cp {} /opt \;

exit $?
