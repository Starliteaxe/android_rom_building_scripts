#!/bin/bash

# 
# Copyright (C) 2020 RB INTERNATIONAL NETWORK
#
#            An Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

RESET='\033[0m'       # Text Reset
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White

echo -e "${CYAN}"
echo "<<<<< © RB INTERNATIONAL NETWORK™ >>>>>"

echo -e "${RED}"
echo " ~// Volte patching Script //~"

ROM_DIR=""

echo -e "${YELLOW}"
echo "enter full rom directory"
echo "eg, /home/cyberjalagam/potato"
echo -e "${RESET}"
read ROM_DIR

cd "$ROM_DIR"


# some really necessary patches for IMS to work
cd frameworks/opt/net/ims && git fetch https://github.com/AOSP-12-RMX2020/frameworks_opt_net_ims && git cherry-pick 4f35ccb8bf0362c31bf5f074bcb7070da660412a^..3fe1cb7b6b2673adfce2b9232dfaf81375398efb
cd ../../../..
 cd packages/modules/Wifi && git fetch https://github.com/AOSP-12-RMX2020/packages_modules_Wifi && git cherry-pick c6e404695bc451a9667f4893501ef8fe78e1a0b7^..90fc3f6781171dc27fed16b60575f9ea62f02e7a
cd ../../..
cd frameworks/opt/telephony && git fetch https://github.com/phhusson/platform_frameworks_opt_telephony android-12.0.0_r26-phh && git cherry-pick 6f116d4cdb716072261ecfe532da527182f6dad6

# Go to initial directory
cd ../../../

echo -e "${CYAN}"
echo "<<<<< © RB INTERNATIONAL NETWORK™ >>>>>"
echo -e "${RESET}"
