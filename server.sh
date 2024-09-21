#!/usr/bin/env fish

cd ~
cd Downloads
cd server\ 1.21.1/

kitty --title "Ngrok" ngrok tcp 25565 &
kitty --title "Minecraft Server" java -Xmx5G -Xms3G -jar server.jar nogui &

sleep 1
clear

echo ""
echo "Press Enter to kill all Java and Ngrok processes if you want to close the server."
read -P "" choice

echo ""
echo "Killing all Java and Ngrok processes..."
killall java
killall ngrok
echo "All processes have been killed."

