#!/bin/bash
echo " = = = = = = = = = = = = = = = = = = = = "
echo " Stopping Bgm-Player.py"
echo " = = = = = = = = = = = = = = = = = = = = "
sudo kill $(ps aux | grep '[B]gm-Player.py' | awk '{print $2}')