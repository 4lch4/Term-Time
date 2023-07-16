#!/bin/bash

################################################################################
## Author:      Devin W. Leaman (4lch4)                                       ##
## Version:     1.0.0                                                         ##
## Filename:    functions.sh                                                  ##
## Created On:  07/16/2023 @ 11:07                                            ##
################################################################################
## Description:                                                               ##
##                                                                            ##
##                                                                            ##
## A bash script that exports functions to simplify/automate various tasks.   ##
################################################################################
## Usage:                                                                     ##
##                                                                            ##
## source functions.sh                                                        ##
################################################################################

# Adds a new annotated tag to the current Git repository.
gt() {
  git tag -s "v$1" -m "v$1 Release"
}

# Adds a new remote origin to the current Git repository using the provided repo as an SSH remote.
# Usage: grao <repo>
# Example: grao 4lch4/Term-Time
grao() {
  REPO_URL="git@github.com:$1.git"

  git remote add origin $REPO_URL

  echo "Added \"$REPO_URL\" as remote origin"
}
