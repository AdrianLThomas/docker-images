# rpi-deluge
## A docker image for Deluge on the Raspberry Pi

Run with: `docker-compose up -d`

or

`docker run -d -p 55100:55100 -p 55100:55100/udp -p 8112:8112 --name deluge   -v /host/deluge/home_dir:/var/lib/deluge adrianlthomas/rpi-deluge`

Navigate to your host with your browser on port 8112. You will want to go to the Deluge settings and set the download folder to something such as: /var/lib/deluge/Downloads

