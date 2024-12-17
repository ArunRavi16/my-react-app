#!/bin/bash
# build.sh - Build Docker image

# Ensure we are in the correct directory (relative path)
cd $(dirname "$0")

# Build Docker image
docker build -t react-app .
