#!/bin/sh

echo "\033[31m""\n\nupdate, upgrade, autoremove\n\n""\033[0m"
sudo apt update &&
sudo apt upgrade -y &&
sudo apt autoremove -y ||
exit 1

echo "\033[31m""\n\npython, pip, numpy\n\n""\033[0m"
sudo apt install -y python-dev python3-dev python3-pip &&
python3 -m pip install -U pip &&
python3 -m pip install --user numpy ||
exit 1

echo "\033[31m""\n\nbuild-essential, cmake\n\n""\033[0m"
sudo apt install -y build-essential cmake git ||
exit 1

echo "\033[31m""\n\nGUI, GL\n\n""\033[0m"
sudo apt install -y libgtk2.0-dev libgtk-3-dev libqt4-dev &&
sudo apt install -y mesa-utils libgl1-mesa-dri libqt4-opengl-dev ||
exit 1

echo "\033[31m""\n\npkg-config\n\n""\033[0m"
sudo apt install -y pkg-config ||
exit 1

echo "\033[31m""\n\nFFmpeg\n\n""\033[0m"
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev ||
exit 1

echo "\033[31m""\n\nparallelism\n\n""\033[0m"
sudo apt install -y libtbb2 libtbb-dev ||
exit 1

echo "\033[31m""\n\nImage codec\n\n""\033[0m"
sudo apt install -y libjpeg-dev libtiff5-dev &&
# sudo apt install -y libpng12-dev ||
sudo apt install -y libpng-dev ||
exit 1


echo "\033[31m""\n\nVideo codec\n\n""\033[0m"
sudo apt install -y libxvidcore-dev &&
sudo apt install -y libx264-dev &&
sudo apt install -y libxine2-dev &&
sudo apt install -y libv4l-dev v4l-utils ||
exit 1

echo "\033[31m""\n\nStreaming\n\n""\033[0m"
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev ||
exit 1

echo "\033[31m""\n\nIEEE 1394 digital camera\n\n""\033[0m"
sudo apt install -y libdc1394-22-dev ||
exit 1

echo "\033[31m""\n\nMathmatic\n\n""\033[0m"
sudo apt install -y gfortran libatlas-base-dev libeigen3-dev libhdf5-serial-dev ||
exit 1

echo "\033[31m""\n\n============================Complete============================\n\n""\033[0m"
