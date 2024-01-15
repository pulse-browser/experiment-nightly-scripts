#!/bin/bash

mkdir -p ~/.local/bin

ln -s ~/.local/share/experiment-nightly-scripts/scripts/install.sh ~/.local/bin/exp-install
ln -s ~/.local/share/experiment-nightly-scripts/scripts/update.sh ~/.local/bin/exp-update

exp-install
