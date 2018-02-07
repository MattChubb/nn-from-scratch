#!/bin/bash

uid=$(id -u)
gid=$(id -g)

docker run --rm -p 8888:8888 -v $PWD:/home/jovyan/work -e NB_UID=$uid -e NB_GID=$gid  jupyter/scipy-notebook start-notebook.sh --NotebookApp.token=''
