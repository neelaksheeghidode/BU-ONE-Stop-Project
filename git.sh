#!/bin/bash

# Cool Colors
PINK='\033[1;35m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

clear
echo -e "${PINK}"
echo "      /\_/\  "
echo "     ( o.o )  ~ [ Nya~! DevOps Mode Active! ]"
echo "      > ^ <  "
echo -e "${NC}"

echo -e "${CYAN}==========================================${NC}"
echo -e "${GREEN} 🚀 Starting Automated Git Push... ${NC}"
echo -e "${CYAN}==========================================${NC}"

# Check status
git status

# Add all files
git add .

# Commit with prompt
echo -e "\n${PINK}✨ Enter your cute commit message:${NC}"
read msg

if [ -z "$msg" ]; then
    msg="Auto-update from DevOps Anime Script 🌸"
fi

git commit -m "$msg"

# Push to Github
echo -e "\n${CYAN}📤 Pushing changes to GitHub main branch...${NC}"
git push origin main

echo -e "\n${PINK}"
echo "     (\_/) "
echo "     (•x•)  ~ [ Done! CI/CD Pipeline Triggered! 🎉 ]"
echo "    / >🌸 "
echo -e "${NC}"
