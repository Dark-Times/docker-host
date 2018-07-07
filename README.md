# docker-host

To run:

$ sudo apt-get update >> **enter password**


**Copy and paste the following into your ssh-client**

$ sudo apt-get install dos2unix -y

$ dos2unix setup-docker-host.sh

$ chmod a+x setup-docker-host.sh 

$ sudo ./setup-docker-host.sh


**To test if this has been successful**

Connect to machine via putty with x11 enabled >> $ xeyes (xeyes should appear on your local desktop)


To confirm that gui apps can be passed through successfully from containers run the following:

$ sudo docker build --rm -t xeyes testimage/.

$ sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" xeyes