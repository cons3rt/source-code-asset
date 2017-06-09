#!/bin/bash

# Sample Asset checkout script
#
# Purpose: Perform git clone or svn checkout of your source
# code from DI2E, Github, software.forge.mil, or wherever
# the source code lives.
#
# NOTE: This script runs on the CONS3RT sourcebuilder
#
# See this article for info about configuring credentials for
# Forge or DI2E access:
# https://kb.cons3rt.com/articles/source-code-accounts
#
# STDOUT and STDERR will be captured in the Log Viewer in
# the CONS3RT UI.
#

# Create the directory in ASSET_DIR to checkout to

/bin/mkdir -p ${ASSET_DIR}/src

# Sample SVN checkout command for a Forge.mil Source Code Repository

# Update the svn checkout URL to your source code repository on Software Forge
# Its a good idea to use the exit code to tell CONS3RT if the checkout succeeded

/bin/echo "Checking out a source code repository from Subversion on Forge.mil..."
svn checkout --non-interactive https://svn.forge.mil/svn/repos/cons3rt-sourcecode-sample/HelloWorld ${ASSET_DIR}/src
result=$?

# Sample GIT checkout command for a DI2E Source Code Repository

/bin/echo "Cloning a source code repository from Git on DI2E..."
cd ${ASSET_DIR}/src
git clone ssh://git@bitbucket.di2e.net:7999/hmc/cons3rt-sourcecode-sample.git
result=$?

exit ${result}
