#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
GREY='\033[0;37m'
NC='\033[0m' # No Color

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
printf "${BLUE}Current dir: $current_dir${NC}\n"
printf "${BLUE}Git branch: $branch${NC}\n"
read -p "select target remote branch (dev|slave|master): " remote_branch
printf "${BLUE}are you shure to deploy ${RED}$branch${BLUE} to ${RED}$remote_branch?"
read -p "Please select Yes|No " answer
echo $answer