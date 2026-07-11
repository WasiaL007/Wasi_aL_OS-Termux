#!/data/data/com.termux/files/usr/bin/bash

echo "Installing WASI AL OS..."

pkg update -y
pkg install wget -y

wget https://github.com/WasiaL007/WasiaL007/releases/download/v1.5/WASI_AL_OS_Termux_v1.5.apk

echo "Download Complete!"
echo "Open the APK file and install WASI AL OS."
