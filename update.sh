#!/bin/bash
set -euo pipefail
echo " = = = = = = = = = = = = = = = = = = = = "
echo " Updating from git."
echo " = = = = = = = = = = = = = = = = = = = = "
cd ~/RetroPie-Bgm || exit
git pull
echo " = = = = = = = = = = = = = = = = = = = = "
echo " Updating Done!"
echo " = = = = = = = = = = = = = = = = = = = = "