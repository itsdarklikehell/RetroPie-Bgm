#!/bin/bash
CONFIGURE(){
WORKINGDIR=/home/pi/RetroPie-Bgm

#######################
DEPS="python-pygame"
CREATE_MUSICDIR(){
echo "creating music dir in: ~/RetroPie/roms/music"
mkdir -p ~/RetroPie/roms/music
echo "please put some music in it..."
read -rsp $'Press any key to continue...\n' -n 1 key
# echo $key
}
ENABLEATBOOT(){
echo "edit /etc/rc.local"
echo "Above exit 0, put the following code:"
echo "(sudo python $WORKINGDIR/Bgm-Player.py) &"
read -rsp $'Press any key to continue...\n' -n 1 key
# echo $key
sudo nano /etc/rc.local
}

FINAL_TEST(){
echo "Final 'test' phase..."
bash $WORKINGDIR/start-player.sh &
#emulationstation
}
}
INSTDEPS(){
echo "Installing dependecies..."
sudo apt-get install $DEPS -y
}


SETUP_ES_MENU(){
echo "Setting up EmulationStation menu options...(STILL WIP)..."
mkdir -p /opt/retropie/configs/bgm
cp $WORKINGDIR/es_systems.cfg /opt/retropie/configs/bgm/es_systems.cfg
cp $WORKINGDIR/emulatos.cfg /opt/retropie/configs/bgm/emulatos.cfg
echo "Please edit /opt/retropie/configs/bgm/es_systems.cfg so that is includes the following:"
cat $WORKINGDIR/es_systems.cfg | echo
read -rsp $'Press any key to continue...\n' -n 1 key
# echo $key
}

############
CONFIGURE
INSTDEPS
CREATE_MUSICDIR
ENABLEATBOOT
SETUP_ES_MENU
FINAL_TEST