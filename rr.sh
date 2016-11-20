#!/bin/bash

# Make sure you're in rr source dir
[ -d ".repo" ] || exit 1
# Specify colors utilized in the terminal
normal='tput sgr0'              # White
red='tput setaf 1'              # Red
green='tput setaf 2'            # Green
yellow='tput setaf 3'           # Yellow
blue='tput setaf 4'             # Blue
violet='tput setaf 5'           # Violet
cyan='tput setaf 6'             # Cyan
white='tput setaf 7'            # White
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold Red
bldgrn=${txtbld}$(tput setaf 2) # Bold Green
bldblu=${txtbld}$(tput setaf 4) # Bold Blue
bldylw=${txtbld}$(tput setaf 3) # Bold Yellow
bldvlt=${txtbld}$(tput setaf 5) # Bold Violet
bldcya=${txtbld}$(tput setaf 6) # Bold Cyan
bldwht=${txtbld}$(tput setaf 7) # Bold White
./vendor/cm/tools/colors

clear

echo -e "";
echo -e "";
tput setaf 4
echo -e "              GGGGGGGGGGGGG       OOOOOOOOO       TTTTTTTTTTTTTTTTTTTTTTT";
echo -e "           GGG::::::::::::G     OO:::::::::OO     T:::::::::::::::::::::T";
echo -e "         GG:::::::::::::::G   OO:::::::::::::OO   T:::::::::::::::::::::T";
tput setaf 2
echo -e "        G:::::GGGGGGGG::::G  O:::::::OOO:::::::O  T:::::TT:::::::TT:::::T";
echo -e "       G:::::G       GGGGGG  O::::::O   O::::::O  TTTTTT  T:::::T  TTTTTT";
tput setaf 3
echo -e "      G:::::G                O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G                O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G    GGGGGGGGGG  O:::::O     O:::::O          T:::::T        ";
tput setaf 1
echo -e "      G:::::G    G::::::::G  O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G    GGGGG::::G  O:::::O     O:::::O          T:::::T        ";
echo -e "      G:::::G        G::::G  O:::::O     O:::::O          T:::::T        ";
tput setaf 5
echo -e "       G:::::G       G::::G  O::::::O   O::::::O          T:::::T        ";
echo -e "        G:::::GGGGGGGG::::G  O:::::::OOO:::::::O        TT:::::::TT      ";
echo -e "         GG:::::::::::::::G   OO:::::::::::::OO         T:::::::::T      ";
tput setaf 7
echo -e "           GGG::::::GGG:::G     OO:::::::::OO           T:::::::::T      ";
echo -e "              GGGGGG   GGGG       OOOOOOOOO             TTTTTTTTTTT  ";
echo -e "";
echo -e "";
tput setaf 7
echo -e "   88888  88888 888888 8   8 88888  88888  88888 888888 88888 88888 888888 ";
tput setaf 2
echo -e "   8   8  8     8      8   8 8   8  8   8  8     8    8   8   8     8    8 ";
tput setaf 3
echo -e "   8eee8e 8eeee 8eeeee 8e  8 8eee8e 8eee8e 8eeee 8e       8e  8eeee 8e   8 ";
tput setaf 1
echo -e "   88   8 88        88 88  8 88   8 88   8 88    88       88  88    88   8 ";
tput setaf 4
echo -e "   88   8 88    e   88 88  8 88   8 88   8 88    88   e   88  88    88   8 ";
tput setaf 5
echo -e "   88   8 88eee 8eee88 88ee8 88   8 88   8 88eee 88eee8   88  88eee 88eee8 ";
echo -e " ";


echo -e "";
echo -e "";
tput sgr0
tput setaf 4
echo -e "";
echo -e " √ You are building Resurrection Remix Nougat ";
echo -e "";
tput sgr0
echo -e "";
tput setaf 3
    sleep 1
    echo
    echo -e " √ Increasing heap size.. ";
    echo
	sleep 2
tput setaf 3
    JACK_VM_COMMAND=${JACK_VM_COMMAND:="java -Xmx4096m"}
    SERVER_NB_COMPILE=2
    export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4096m"
    out/host/linux-x86/bin/jack-admin kill-server
    out/host/linux-x86/bin/jack-admin start-server
tput setaf 2
    sleep 1
    echo
    echo -e " √ Heap size has been increased ! ";
    echo
	sleep 2
tput setaf 6
    sleep 1
    echo
    echo -e " √ Now getting ready for the build.. ";
    echo
tput setaf 4
    sleep 1
    echo
    echo -e " √ Build is just started // #Getresurrected ";
    echo
tput sgr0
	. build/envsetup.sh && brunch shamrock
	exit 1;
	fi
