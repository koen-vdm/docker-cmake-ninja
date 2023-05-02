#!/bin/bash

read -p "Enter the docker user to deploy to: " USER

CURRENTUSER=$(docker info | sed '/Username:/!d;s/.* //')

if [[ "$CURRENTUSER" != "$USER" ]]; then
    docker login -u $USER
fi

if [[ "$?" -eq 0 ]]; then
    docker build . -t "$USER/sdk6buildtools-dev"
fi

if [[ "$?" -eq 0 ]]; then
    docker push "$USER/sdk6buildtools-dev"
fi