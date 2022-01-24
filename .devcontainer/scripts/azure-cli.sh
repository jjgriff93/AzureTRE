#!/bin/bash
set -e

CMD=az
NAME="Azure CLI"

echo -e "\e[34m»»» 📦 \e[32mInstalling \e[33m$NAME\e[0m ..."
curl -sL https://raw.githubusercontent.com/microsoft/vscode-dev-containers/main/script-library/azcli-debian.sh | sudo bash

echo -e "\n\e[34m»»» 📦 \e[32mAdding azure-firewall extension"
az extension add --name azure-firewall --system

echo -e "\n\e[34m»»» 💾 \e[32mInstalled to: \e[33m$(which $CMD)"
echo -e "\e[34m»»» 💡 \e[32mVersion details: \e[39m$($CMD --version)"


