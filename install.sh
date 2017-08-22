#!/usr/bin/env bash

. bin/misc

<<<<<<< HEAD
	echo -e "\e[1;36mInstalling rocks\e[0m"

	rocks="luasocket luasec redis-lua lua-term serpent lua-cjson Lua-cURL"
	for rock in $rocks; do
		sudo luarocks install $rock
	done

	branch="master"
	read -p "Do you want to use the beta branch? (Y/N): "

	if [ "$REPLY" == "Y" ]; then
		branch="beta"
	fi

	echo -e "\e[1;36mFetching latest Group Butler source code (branch: $branch)\e[0m"
	git clone -b $branch https://github.com/RememberTheAir/GroupButler.git
=======
read -p "Do you want me to install Group Butler Bot? (Y/N): "
>>>>>>> 834b3e7... Updating installer

case $REPLY in [yY])
	updateSystem
	install
	installRocks
	cleanSystem
	finish;;
	*) echo "Exiting...";;
esac
