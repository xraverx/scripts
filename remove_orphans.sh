#!/bin/bash
#Remove orphan packages using pacman on Arch Linux
sudo pacman -Rns $(pacman -Qtdq)
