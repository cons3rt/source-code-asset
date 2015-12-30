#!/bin/bash

# Sample Asset checkout script
#
# Purpose: Perform svn checkout of your source code from
# software.forge.mil.
#
# NOTE: This script runs on the CONS3RT build server
#
# In order for CONS3RT to checkout your source code, the
# "hmcbuildservice" forge user must have access to the svn
# repository.  One of the following conditions must be true:
# 1. The svn repository is open to the Software Forge
#    Community
# 2. If you have a private svn repository, you'll need to
#    add the "hmcbuildservice" user as a "Contributor" which
#    allows the CONS3RT build service to svn checkout your
#    source code

# Create the directory in ASSET_DIR to checkout to

mkdir -p ${ASSET_DIR}/src

# Update the svn checkout URL to your source code repository on Software Forge
# Its a good idea to use the exit code to tell CONS3RT if the checkout succeeded

svn checkout --non-interactive https://svn.forge.mil/svn/repos/cons3rt-sourcecode-sample/HelloWorld ${ASSET_DIR}/src

exit $?
