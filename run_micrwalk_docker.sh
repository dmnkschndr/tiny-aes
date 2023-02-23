#!/bin/sh
LIBRARY="/home/dominik/Development/gitProjects/Dev2SCA/tiny-aes-c/"

docker run -it -v $LIBRARY:/mw/library ghcr.io/microwalk-project/microwalk:pin /bin/bash
