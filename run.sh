#!/bin/bash

uid=$(id -u)
gid=$(id -g)

docker run --rm -p 8888:8888 -v $PWD:/home/jovyan/work -e GEN_CERT=yes -e NB_UID=$uid -e NB_GID=$gid jupyter/scipy-notebook