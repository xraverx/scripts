#!/bin/bash

# install yay if not already installed
if ! command -v yay &> /dev/null
then
    echo "Yay package helper not found. Installing..."
    sudo pacman -S yay
fi

# update packages using yay
yay -Syu
