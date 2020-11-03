#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

echo "Starting mkdocs build"

####################################################
# Build the Mkdocs site
####################################################

mkdocs build --site-dir /site

####################################################
# Build completed
####################################################

echo "Completed mkdocs build"

pwd