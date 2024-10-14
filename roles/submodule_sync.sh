#!/bin/env bash

for submodule in *; do
	if [ -d "$submodule" ]; then
		git submodule update "$submodule"
		cd "$submodule"
		echo
		echo "checking submodule - $submodule"
		git checkout main
		git pull
		git checkout base
		git pull
		cd ..
	fi
done
