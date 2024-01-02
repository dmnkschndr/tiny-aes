#!/bin/sh
LIBRARY="$(pwd)"

docker run -it -v $LIBRARY:/mw/library ghcr.io/microwalk-project/microwalk:pin /bin/bash
