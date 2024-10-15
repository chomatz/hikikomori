#!/bin/env bash

push_branches () {
	git push
	git checkout main
	git merge base
	git push
	git checkout base
}

for submodule in roles/*; do
	if [ -d "$submodule" ]; then
		cd "$submodule"
		echo "---------- checking submodule [$submodule] ----------"
		if [ "$(git branch --show-current)" == "base" ]; then
			push_branches
		fi
		cd ../..
	fi
done

echo "---------- checking main repository ----------"
if [ "$(git branch --show-current)" == "base" ]; then
	push branches
fi
