#!/bin/bash
##################################################################
## change git config user.name & user.email for the given directory
## 
##
###################################################################


set -e

default_git_dir = "."
default_user_name = "Karem Allouji"
default_user_email = "4150769+KaremAllouji@users.noreply.github.com"

if [ -n "$1" ]; then
  git_dir = $1
else
  git_dir = $default_git_dir
fi

if [ -n "$2" ]; then
  user_name = $2
else
  user_name = $default_user_name
fi

if [ -n "$3" ]; then
  user_email = $3
else
  user_email = $default_user_email
fi


for git_repo in $git_dir
do
    cd $git_repo
    git config user.name $user_name && git config user.email $user_email
    # cd ..
done
