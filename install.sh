#!/bin/bash
CONFIGURE(){
WORKINGDIR=/home/pi/RetroPie-Bgm

#######################
DEPS="python-pygame"
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
sudo python $WORKINGDIR/Bgm-Player.py & 
#emulationstation
}
}
INSTDEPS(){
echo "Installing dependecies..."
sudo apt-get install $DEPS -y
}



GET_SCRIPT(){
echo "Getting the script..."
git clone git clone --depth=1 https://github.com/itsdarklikehell/


ENABLEATBOOT
}

############
CONFIGURE
INSTDEPS
#GET_SCRIPT
FINAL_TEST
