#!/bin/bash

# install yay if not already installed
if ! command -v yay &> /dev/null
then
    echo "Yay package helper not found. Install before running script."
fi

# update packages using yay
yay -Syu
