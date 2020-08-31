#!/bin/bash

# This script provides the aliases to build the FINOS landscape locally.
# 
# To start the lanscape locally, run the following commands:
# 
# . ./setup.sh
# y
# yf
# yp

# Adapt this based on your local setup
export GITHUB_KEY=$FINOS_GITHUB_TOKEN
# export SKIP_VERSION_CHECK=1

function y { export PROJECT_PATH=`pwd` && (cd ../landscapeapp && yarn run "$@")}
export -f y
# yf does a normal build and full test run
alias yf='y fetch'
alias yl='y check-links'
alias yq='y remove-quotes'
# yp does a build and then opens up the landscape in your browser ( can view the PDF and PNG files )
alias yp='y build && y open:dist'
# yo does a quick build and opens up the landscape in your browser
alias yo='y open:src'
alias a='for path in /Users/m/w/projects/landscape/{landscapeapp,finos-landscape}; do echo $path; git -C $path pull -p; done; (cd /Users/m/w/projects/landscape/landscapeapp && yarn);'
