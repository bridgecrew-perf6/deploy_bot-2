#!/bin/bash

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
echo Current dir: $current_dir
echo Git branch: $branch
read -p "select target remote branch (dev|slave|master): " remote_branch
printf "${BLUE}are you shure to deploy ${RED}$branch${BLUE} to ${RED}$remote_branch?"