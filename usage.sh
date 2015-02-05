#!/bin/bash

echo "Run as:"
echo ""
echo '    docker run -it -v $(pwd):/target doit_in_docker doit ...'
echo ""
echo "If you need docker inside, add '-v /var/run/docker.sock:/docker.sock'"
echo ""
echo "For easy invocation, if you are brave, let us create an alias for you."
echo "Execute"
echo ""
echo '    eval $(docker run doit_in_docker /alias)'
echo ""
echo "and then use the command 'doit_in_docker'. For example:"
echo ""
echo "    doit_in_docker doit ..."
echo ""
