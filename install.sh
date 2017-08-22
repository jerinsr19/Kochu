#!/usr/bin/env bash

# Lua Version
LUA=5.2

# Dependencies and libraries
NATIVE="libreadline-dev libssl-dev luarocks lua$LUA liblua$LUA-dev git make unzip redis-server curl libcurl4-gnutls-dev deborphan"
ROCKS="luasocket luasec redis-lua lua-term serpent lua-cjson Lua-cURL"

# Color variables
Red='\033[0;31m'
Green='\033[0;32m'
Orange='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
BRed='\033[1;31m'
BGreen='\033[1;32m'
BOrange='\033[1;33m'
BBlue='\033[1;34m'
BPurple='\033[1;35m'
BCyan='\033[1;36m'
Default='\033[0m'

<<<<<<< HEAD
	echo -e "\e[1;36mInstalling rocks\e[0m"

	rocks="luasocket luasec redis-lua lua-term serpent dkjson Lua-cURL"
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
	# Install Dependencies
	clear
	echo -en "${Blue}The packages will be installed:${Default} ${NATIVE}\n${Cyan}Do you want to install the dependencies (Y/N): ${Default}"
	read REPLY
	if [[ $REPLY == [yY] ]]; then
		sudo apt-get install $NATIVE -y
	fi

	# Install Luarocks
	clear
	echo -en "${Cyan}Do you want to download and install luarocks (Y/N): ${Default}"
	read REPLY
	if [[ $REPLY == [yY] ]]; then
		git clone http://github.com/keplerproject/luarocks
		cd luarocks
		./configure --lua-version=$LUA
		make build
		sudo make install
		cd ..
		rm -rf luarocks*
	fi

	clear
	echo -en "${Cyan}Do you want to download the luarocks libraries (Y/N): ${Default}"
	read REPLY
	if [[ $REPLY == [yY] ]]; then
		for ROCK in $ROCKS; do
			sudo luarocks install $ROCK
		done
	fi

	clear
	if [ ! -d .git ]; then
		echo -en "${Green}Would you like to clone the source of GroupButler? (Y/N): ${Default}"
		read REPLY
		if [[ $REPLY == [yY] ]]; then
			echo -en "${Orange}Fetching latest Group Butler source code\n${Default}"
			git clone -b master https://github.com/RememberTheAir/GroupButler.git && cd GroupButler
		fi
	fi

	if [ -d .git ]; then
		echo -en "${Green}Do you want to use the beta branch (If you modified something we will do a stash)? (Y/N): ${Default}"
		read REPLY
		git stash
		git checkout beta
	fi;

	clear
	echo -en "${BGreen}Group Butler successfully installed! Change values in config file and run ${BRed}./launch.sh${BGreen}.${Default}";;
	*) echo "Exiting...";;
esac
