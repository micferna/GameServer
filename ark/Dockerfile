FROM ubuntu:23.04

# Update system packages
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y \
    lib32gcc-s1 \
    wget \
    tar

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a new user with specific UID and GID
RUN useradd -m steam

# Download SteamCMD
RUN mkdir /home/steam/steamcmd && cd /home/steam/steamcmd && \
    wget -qO- https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar zxf -

# Install Ark Survival Evolved
RUN /home/steam/steamcmd/steamcmd.sh +force_install_dir /home/steam/ark +login anonymous +app_update 376030 validate +quit

# Change owner of the ark directory
#RUN mkdir -p /home/steam/ark/ShooterGame/Saved && chown -R steam:steam /home/steam/ark/ShooterGame/Saved
RUN chown -R steam:steam /home/steam
USER steam

WORKDIR /home/steam/ark

# Copy start script into the image
COPY --chown=steam:steam start.sh ./ShooterGame/Binaries/Linux/

CMD ["./ShooterGame/Binaries/Linux/start.sh"]

EXPOSE 7777/udp 7778/udp 27015/udp
