#!/bin/bash

INSTALL_LINK="https://nightly.link/pulse-browser/experiment/workflows/main/artifact-based-browser/testing_browser.zip"

TEMP=$(mktemp -d)

(
	cd $TEMP
	echo $TEMP

	wget $INSTALL_LINK
	unzip testing_browser.zip
	tar -xf testing-browser.tar.bz2

	rm -rf ~/.local/share/experiment
	mkdir -p ~/.local/share/experiment
	cp -r rt_dist/* ~/.local/share/experiment
)

rm -rf $TEMP

rm "$HOME/.local/share/experiment-nightly-scripts/assets/launch-script.sh"
ln -s "$HOME/.local/share/experiment-nightly-scripts/assets/launch-script.sh" ~/.local/bin/experiment-browser
rm "$HOME/.local/share/experiment-nightly-scripts/assets/com.fushra.browser.experiment.desktop"
ln -s "$HOME/.local/share/experiment-nightly-scripts/assets/com.fushra.browser.experiment.desktop" ~/.local/share/applications/com.fushra.browser.experiment.desktop
