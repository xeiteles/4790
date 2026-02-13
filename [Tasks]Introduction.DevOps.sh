#!/bin/bash

OS_VER=$(cat /etc/os-release | grep VERSION=)
USERS=$(cat /etc/passwd | grep /bin/bash)
PORTS=$(ss -tulpn)

echo -e "OS $OS_VER\nUsers on the OS with bash shell installed = $USERS \n Open ports: $PORTS" | tee output.txt
