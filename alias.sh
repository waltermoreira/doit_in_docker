#!/bin/bash

echo "alias doit_in_docker='docker run -it -v \$(pwd):/target -v /var/run/docker.sock:/docker.sock doit_in_docker'"
