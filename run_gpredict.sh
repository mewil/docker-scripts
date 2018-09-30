#!/bin/sh
source env.sh
docker run -it -e $ENV -v $XSOCK:$XSOCK kb1oiq/gpredict
