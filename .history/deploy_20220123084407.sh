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
printf "${BLUE}are you shure to deploy ${RED}$branch${BLUE} to ${RED}$remote_branch?${NC}\n"
read -p "Please select Yes|No: " answer

if [[ "${answer,}" = "yes" ]]; then
    ready_deploy=true
elif [[ "${answer,}" = "y" ]]; then
    ready_deploy=true
else
    ready_deploy=false
fi
echo $ready_deploy
if [[ $ready_deploy = true ]]; then
    printf "${BLUE}i'm ready to merge ${GREEN}${branch}${BKUE}>${GREEN}${remote_branch}"
fi