#!/bin/bash
sudo kill $(ps aux | grep '[B]gm-Player.py' | awk '{print $2}')
sudo python ~/RetroPie-Bgm/Bgm-Player.py & 