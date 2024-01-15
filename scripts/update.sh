#!/bin/bash

(
	cd ~/.local/share/experiment-nightly-scripts/
	git pull
)

exp-install
