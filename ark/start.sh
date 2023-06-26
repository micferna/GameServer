#!/bin/bash
./ShooterGame/Binaries/Linux/ShooterGameServer ${MAP}?listen?SessionName=${SESSION_NAME}?ServerPassword=${SERVER_PASSWORD}?ServerAdminPassword=${ADMIN_PASSWORD}?AltSaveDirectoryName=${AltSaveDirectoryName}?Port=${GAME_PORT}?QueryPort=${QUERY_PORT}?RCONPort=${RCON_PORT}?MaxPlayers=${MAX_PLAYERS} -NoTransferFromFiltering -clusterid=${CLUSTER_ID} -NoBattlEye -server -log
