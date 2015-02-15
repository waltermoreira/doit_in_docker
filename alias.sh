#!/bin/bash

echo "alias doit_in_docker='docker run -it -v \$(pwd):/target -v /var/run/docker.sock:/docker.sock waltermoreira/doit_in_docker'"
echo "alias doit='docker run -it -v \$(pwd):/target -v /var/run/docker.sock:/docker.sock waltermoreira/doit_in_docker doit'"
