#!/data/data/com.termux/files/usr/bin/bash

clear

GREEN="\e[1;32m"
CYAN="\e[1;36m"
YELLOW="\e[1;33m"
RED="\e[1;31m"
NC="\e[0m"

echo -e "${CYAN}"
cat << "EOF"
██╗    ██╗ █████╗ ███████╗██╗     █████╗ ██╗
██║    ██║██╔══██╗██╔════╝██║    ██╔══██╗██║
██║ █╗ ██║███████║███████╗██║    ███████║██║
██║███╗██║██╔══██║╚════██║██║    ██╔══██║██║
╚███╔███╔╝██║  ██║███████║███████╗██║  ██║███████╗
 ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝
EOF
echo -e "${NC}"

echo -e "${GREEN}=================================================${NC}"
echo -e "${YELLOW}          WASI AL OS v1.6 FINAL INSTALLER${NC}"
echo -e "${CYAN}              Developed by Wasi aL${NC}"
echo -e "${GREEN}=================================================${NC}"
echo

echo -e "${CYAN}[1/3] Updating package lists...${NC}"
pkg update -y

echo
echo -e "${CYAN}[2/3] Installing required packages...${NC}"
pkg install wget -y

APK="WASI_AL_OS_Termux_v1.5.apk"
URL="https://github.com/WasiaL007/WasiaL007/releases/download/v1.5/WASI_AL_OS_Termux_v1.5.apk"

echo
echo -e "${CYAN}[3/3] Preparing WASI AL OS...${NC}"

if [ -f "$APK" ]; then
    echo -e "${GREEN}[✓] APK already exists.${NC}"
else
    echo
    echo -e "${YELLOW}Downloading WASI AL OS APK...${NC}"
    wget --show-progress -O "$APK" "$URL"
fi

clear

echo -e "${GREEN}"
cat << "EOF"
██╗    ██╗ █████╗ ███████╗██╗     █████╗ ██╗         █████╗ ██╗
██║    ██║██╔══██╗██╔════╝██║    ██╔══██╗██║        ██╔══██╗██║
██║ █╗ ██║███████║███████╗██║    ███████║██║        ███████║██║
██║███╗██║██╔══██║╚════██║██║    ██╔══██║██║        ██╔══██║██║
╚███╔███╔╝██║  ██║███████║███████╗██║  ██║███████╗  ██║  ██║███████╗
 ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝  ╚═╝  ╚═╝╚══════╝
EOF
echo -e "${NC}"

echo
echo -e "${GREEN}=================================================${NC}"
echo -e "${YELLOW}             DOWNLOAD COMPLETE${NC}"
echo -e "${GREEN}=================================================${NC}"
echo

echo -e "${GREEN}✓ WASI AL OS APK downloaded successfully.${NC}"
echo
echo -e "${CYAN}Launching Android Package Installer...${NC}"
echo

am start \
-a android.intent.action.VIEW \
-d "file://$PWD/$APK" \
-t "application/vnd.android.package-archive"

sleep 2

echo
echo -e "${YELLOW}=================================================${NC}"
echo -e "${RED}If the installer didn't open automatically:${NC}"
echo
echo -e "${GREEN}1.${NC} Open your File Manager."
echo -e "${GREEN}2.${NC} Go to:"
echo -e "   ${CYAN}$PWD${NC}"
echo -e "${GREEN}3.${NC} Tap ${YELLOW}$APK${NC} to install."
echo -e "${YELLOW}=================================================${NC}"
echo
echo -e "${GREEN}❤ Thank you for using WASI AL OS ❤${NC}"
echo -e "${CYAN}Made with 🐍 Python & ❤ by Wasi aL${NC}"
echo
