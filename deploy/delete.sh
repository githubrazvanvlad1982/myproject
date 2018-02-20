#!/bin/bash

docker  rm -f  $(docker container ls -q );
docker  rmi -f $(docker images -q);
