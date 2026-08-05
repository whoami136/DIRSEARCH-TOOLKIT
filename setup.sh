#!/bin/bash
# ==================================================
# DIRSEARCH TOOLKIT - FULL SETUP SCRIPT
# Creator: Nur {whoami136}
# ==================================================

# ANSI Color Codes
B='\033[1;34m'
W='\033[1;37m'
GREY='\033[90m'
GREEN='\033[1;32m'
RED='\033[1;31m'
RESET='\033[0m'

clear
echo -e "${B}════════════════════════════════════════${RESET}"
echo -e "${W}   DIRSEARCH TOOLKIT - FULL SETUP       ${RESET}"
echo -e "${W}       Created by: Nur {whoami136}      ${RESET}"
echo -e "${B}════════════════════════════════════════${RESET}"

echo -e "${W}[*] Installing required system packages (python3, pip, git, venv)...${RESET}"
sudo apt-get install -y python3 python3-pip git python3-venv

echo -e "${W}[*] Cleaning legacy apt dirsearch package...${RESET}"
sudo apt remove -y dirsearch 2>/dev/null

echo -e "${W}[*] Setting up Python virtual environment...${RESET}"
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo -e "${GREEN}[+] Virtual environment created successfully.${RESET}"
else
    echo -e "${GREEN}[+] Virtual environment already exists.${RESET}"
fi

echo -e "${W}[*] Activating virtual environment and installing dirsearch...${RESET}"
source venv/bin/activate

pip install --upgrade pip
pip install --no-cache-dir git+https://github.com/maurosoria/dirsearch.git

if [ $? -eq 0 ]; then
    echo -e "${GREEN}[+] Dirsearch installed successfully inside venv!${RESET}"
else
    echo -e "${RED}[!] Installation failed. Please check your internet connection.${RESET}"
    exit 1
fi

echo -e "${W}[*] Creating local reports directory...${RESET}"
mkdir -p reports

echo -e "${B}════════════════════════════════════════${RESET}"
echo -e "${GREEN}[+] Setup completed successfully!${RESET}"
echo -e "${W}[+] Run your tool using:${RESET}"
echo -e "${GREEN}    source venv/bin/activate${RESET}"
echo -e "${GREEN}    bash dirsearch.sh${RESET}"
echo -e "${B}════════════════════════════════════════${RESET}"
