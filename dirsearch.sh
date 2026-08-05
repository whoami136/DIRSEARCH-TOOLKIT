#!/bin/bash
# ==================================================
# ADVANCED DIRSEARCH TOOLKIT
# Creator: Nur {whoami136}
# ==================================================

# ANSI Color Codes for custom UI elements
B='\033[1;34m'
W='\033[1;37m'
BRIGHT_WHITE='\033[1;97m'
GREY='\033[90m'
ORANGE='\033[33m'
RED='\033[1;31m'
DP='\033[38;5;129m'
RESET='\033[0m'

banner() {
    clear
    echo -e "${GREY}"
    echo -e "         !\________________         !\\"
    echo -e "         !!                    !! \\"
    echo -e "         !!    Dirsearch Toolkit    !!  \\"
    echo -e "         !!                    !!   !"
    echo -e "         !!        Free            !!   !"
    echo -e "         !!                    !!   !"
    echo -e "         !!        #hugs           !!   !"
    echo -e "         !!                    !!   !"
    echo -e "         !!        By: whoami136       !!  /"
    echo -e "         !!_________________________!! /"
    echo -e "         !/_________________________\!/"
    echo -e "             __\\_________________/__/!_"
    echo -e "            !_______________________!/"
    echo -e "${BRIGHT_WHITE}"
    echo -e "  ____  _           _                             "
    echo -e " |  _ \(_)_ __ ___ (_) ___  __ _ _ __ ___ | |__  "
    echo -e " | | | | | '__/ __|| |/ _ \/ _\` | '_ \` _ \| '_ \ "
    echo -e " | |_| | | |  \\__ \\| |  __/ (_| | | | | | | | | |"
    echo -e " |____/|_|_|  |___/|_|\\___|\\__,_|_| |_| |_|_| |_|"
    echo -e "${BRIGHT_WHITE}"
    echo -e "[---]        Dirsearch-Toolkit         [---]"
    echo -e "[---]    Created by: Nur {whoami136}    [---]"
    echo -e "[---]    Homepage: https://github.com/whoami136 [---]"
    echo -e "${RESET}"
}

banner

# =========================
# EDITOR INPUT
# =========================
echo -e "${B}══════════════════════════════"
echo -e "${W}     UNIVERSAL DIRSEARCH ENGINE v1"
echo -e "${B}══════════════════════════════${RESET}"

echo -e "${W}[*] Opening nano input editor for URLs...${RESET}"

TMPFILE=$(mktemp)
nano "$TMPFILE"

# Clean input URLs
clean_urls=()
while IFS= read -r line; do
    line=$(echo "$line" | tr -d '\r' | xargs)
    [[ -z "$line" || "$line" =~ ^# ]] && continue
    clean_urls+=("$line")
done < "$TMPFILE"
rm -f "$TMPFILE"

if [ ${#clean_urls[@]} -eq 0 ]; then
    echo -e "${RED}[!] No valid URLs provided. Exiting.${RESET}"
    exit 1
fi

echo -e "${W}[+] Loaded ${#clean_urls[@]} target URL(s) successfully${RESET}"
echo -e "${GREY}----------------------------------${RESET}"

# =========================
# EXECUTION LOOP (NO FILE SAVING)
# =========================
for url in "${clean_urls[@]}"; do
    echo -e "${W}[+] Scanning Target:${RESET} ${BRIGHT_WHITE}$url${RESET}"
    echo -e "${GREY}----------------------------------${RESET}"

    # Executing natively without output flags
    dirsearch -u "$url" \
        -e php,html,txt,asp,json,js \
        --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" \
        -t 100 \
        --timeout 10

    echo -e "${GREY}----------------------------------${RESET}"
    echo -e "${ORANGE}[!] Scan finished for $url (No output logs saved to disk)${RESET}"
    echo -e "${GREY}==================================${RESET}"
done
