#!/bin/bash

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
remote=$(git branch -r)
echo Current dir: $current_dir
echo Git branch: $branch
echo Remote: $remote
