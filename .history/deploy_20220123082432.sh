#!/bin/bash

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
echo Current dir: $current_dir
echo Git branch: $branch
read -p "select target remote branch (dev|slave|master): " remote_branch
echo are you shure to deploy $branch to $remote_branch?
