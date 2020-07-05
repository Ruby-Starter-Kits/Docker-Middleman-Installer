#!/bin/bash
set -u

docker build $(pwd) -t rubystarterkits/middleman-installer:latest
