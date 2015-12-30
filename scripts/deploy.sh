#!/bin/bash

# Sample Asset deployment script
#
# Purpose: Assemble build artifacts into the media directory
#
# NOTE: This script execute on the CONS3RT build service

# Create the directory in ASSET_DIR to copy build artifacts to

mkdir -p ${ASSET_DIR}/media

# This example copies all jar files to the media directory
# Modify this step to assemble build artifacts from your software build

find ${ASSET_DIR}/src -name '*.jar' -exec cp {} ${ASSET_DIR}/media \;

exit $?
