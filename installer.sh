#!/bin/bash
set -u

# This will setup a new Middleman Project which will run under docker.
# The aim is to only require developers install docker to try Middleman.
# 
# To run, in terminal run:
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Ruby-Starter-Kits/Docker-Middleman-Installer/master/installer.sh)"

echo "Installing Middleman (Via Docker)"

## TODO: Check docker exists

## Run the docker image with the latest version of middleman & docker templates
docker pull rubystarterkits/middleman-installer:latest
docker run --rm -it -v $(pwd):/usr/src/app rubystarterkits/middleman-installer:latest

## Build the local container
echo "Building docker container for your app"
docker-compose --file $(pwd)/App/docker-compose.yml build

## Install gems & node modules
echo "Completing installation"
docker-compose --file $(pwd)/App/docker-compose.yml run --rm web /bin/sh -c 'bundle && yarn'

## Summarise what people need to do next:
echo "You're good to go"
echo "Installed to directory: $(pwd)/App"
echo "To start your Middleman server: cd $(pwd)/App && docker-compose up"
echo "Then navigate to: http://127.0.0.1:3000"
