#!/bin/sh
source env.sh
docker run --name firefox -e $ENV -v $VOLUME jess/firefox
