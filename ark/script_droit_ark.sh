#!/bin/bash

containers=$(docker ps --filter name=ark -q)

for container in $containers
do
    echo "Exécution de la commande sur le container $container"
    docker exec -u 0 -it $container chown -R steam:steam /home/steam/ark/ShooterGame/Saved
done
