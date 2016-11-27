# rpi-deluge
## A docker image for Deluge on the Raspberry Pi

Once running, you will want to set the download folder to something such as: /var/lib/deluge/Downloads

Run with: 
docker run -d -p 55100:55100 -p 55100:55100/udp -p 8112:8112 --name deluge   -v /host/deluge/home_dir:/var/lib/deluge adrianlthomas/rpi-deluge

## TODO
Publish to docker hub
