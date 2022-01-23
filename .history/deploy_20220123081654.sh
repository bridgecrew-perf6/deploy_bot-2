#!/bin/bash

current_dir=$(pwd)
branch=$(git rev-parse --abbrev-ref HEAD)
echo Current dir: $current_dir
echo Git branch: $branch
