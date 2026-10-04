#!/bin/bash
set -euo pipefail
echo " = = = = = = = = = = = = = = = = = = = = "
echo " Skipping song."
echo " = = = = = = = = = = = = = = = = = = = = "
sudo kill "$(ps aux | grep '[B]gm-Player.py' | awk '{print $2}')"
sudo python3 ~/RetroPie-Bgm/Bgm-Player.py & 