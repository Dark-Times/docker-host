apt-get update
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh && rm get-docker.sh
apt-get install -qqy x11-xserver-utils xauth x11-apps
xhost +local:docker
reboot now