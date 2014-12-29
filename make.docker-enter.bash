#!/bin/bash
set -e 
wget https://raw.githubusercontent.com/Pithikos/docker-enter/master/docker-enter.c
gcc docker-enter.c -o docker-enter
chmod +x docker-enter && cp docker-enter /target
exit
