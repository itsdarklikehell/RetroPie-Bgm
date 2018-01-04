#!/bin/bash
sudo kill $(ps aux | grep '[p]ython Bgm-Player.py' | awk '{print $2}')