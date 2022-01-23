#!/bin/bash

RED='\033[0;31m'

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
echo Current dir: $current_dir
echo Git branch: $branch
read -p "select target remote branch (dev|slave|master): " remote_branch
printf "${RED}are you shure to deploy $branch to $remote_branch?"
