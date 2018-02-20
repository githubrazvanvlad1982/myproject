#!/bin/bash

docker network rm $(docker network ls -q);
docker  rm -f  $(docker container ls -aq);
source build.sh
source run.sh
