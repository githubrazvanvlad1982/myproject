#!/bin/bash

docker  rm -f  $(docker container ls -q);
source build.sh
source run.sh
