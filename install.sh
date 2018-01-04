#!/bin/bash
# TODO: Make a theme for emulationstation for it.
CONFIGURE(){
WORKINGDIR=/home/pi/RetroPie-Bgm

#######################
DEPS="python-pygame"
CREATE_MUSICDIR(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "creating music dir in: ~/RetroPie/roms/music"
mkdir -p ~/RetroPie/roms/music
echo "please put some music in it..."
echo " = = = = = = = = = = = = = = = = = = = = "
read -rsp $'Press any key to continue...\n' -n 1 key
}
ENABLEATBOOT(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "edit /etc/rc.local"
echo "Above exit 0, put the following code:"
echo "(sudo python $WORKINGDIR/Bgm-Player.py) &"
echo " = = = = = = = = = = = = = = = = = = = = "
read -rsp $'Press any key to continue...\n' -n 1 key
sudo nano /etc/rc.local
}

FINAL_TEST(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Final 'test' phase..."
echo " = = = = = = = = = = = = = = = = = = = = "
bash $WORKINGDIR/start-player.sh &
}
}
INSTDEPS(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Installing dependecies..."
echo " = = = = = = = = = = = = = = = = = = = = "
sudo apt-get install $DEPS -y
}
SETUP_ES_MENU(){
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Setting up EmulationStation menu options...(STILL WIP)..."
echo " = = = = = = = = = = = = = = = = = = = = "
mkdir -p /opt/retropie/configs/bgm
cp $WORKINGDIR/es_systems.cfg /opt/retropie/configs/bgm/es_systems.cfg
cp $WORKINGDIR/emulators.cfg /opt/retropie/configs/bgm/emulators.cfg
echo " = = = = = = = = = = = = = = = = = = = = "
echo "Please edit /opt/retropie/configs/bgm/es_systems.cfg so that is includes the following:"
cat $WORKINGDIR/es_systems.cfg
echo " = = = = = = = = = = = = = = = = = = = = "
read -rsp $'Press any key to continue...\n' -n 1 key
}
############
CONFIGURE
INSTDEPS
CREATE_MUSICDIR
ENABLEATBOOT
SETUP_ES_MENU
FINAL_TEST