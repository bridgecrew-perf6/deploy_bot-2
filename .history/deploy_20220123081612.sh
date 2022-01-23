#!/bin/bash

echo deploy_bot is ready to serve
current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
echo Current dir: $current_dir
echo Git branch: $branch
