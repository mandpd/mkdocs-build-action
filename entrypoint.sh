#!/bin/sh

set -x # verbose mode
# set -e # stop executing after error

echo "Starting mkdocs build"

####################################################
# Build the Mkdocs site
####################################################

mkdocs build
pwd
ls -l /github/workspace
####################################################
# Build completed
####################################################

echo "Completed mkdocs build"
