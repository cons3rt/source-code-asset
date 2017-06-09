#!/bin/bash

# Sample Asset Build Script
#
# Purpose: Execute your software build with Ant or Maven
#
# NOTE: This script executes on the CONS3RT sourcebuilder

# Execute the command to build your source code. Maven and Ant are supported
# Its a good idea to use the exit code to tell CONS3RT if the build succeeded

cd ${ASSET_DIR}/src

/opt/maven/bin/mvn install

exit $?
