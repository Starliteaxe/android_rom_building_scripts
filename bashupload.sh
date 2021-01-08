#!/bin/bash

echo "<<<<< © RB INTERNATIONAL NETWORK™ >>>>>"

FILE_NAME=""
ROM_DIR=""
CODENAME=""

echo "Enter full rom directory"
echo "eg, /home/jaishnavprasad/sakura"
read ROM_DIR

echo "Enter codename"
echo "eg, begonia, CPH1859 etc..."
read CODENAME

cd "$ROM_DIR"/out/target/product/"$CODENAME"
ls
echo "enter the rom name"
echo "ProjectSakura-4.R-CPH1859-696969.zip"
read FILE_NAME

curl https://bashupload.com/"$FILE_NAME" --data-binary @"$ROM_DIR"/out/target/product/"$CODENAME"/"$FILE_NAME"
echo "Operation sucessful!, file has been uploaded"

echo "<<<<< AUTHOR: hitesh920 >>>>>"
echo "<<<<< © RB INTERNATIONAL NETWORK™ >>>>>"