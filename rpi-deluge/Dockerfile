FROM armhf/ubuntu
MAINTAINER Adrian L Thomas <www.adrian-thomas.com>

ENV DELUGE_USER delugeuser
ENV DELUGE_GROUP delugegroup

# Install
RUN apt-get update && \
    apt-get install -qy deluged deluge-web supervisor && \
    apt-get clean

# Configure Supervisor Daemon
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Initialisation Script
COPY init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

VOLUME /var/lib/deluge

# Ports
## Connection Ports
EXPOSE 55100
EXPOSE 55100/udp

## Daemon
EXPOSE 58846

## Deluge-Web
EXPOSE 8112

CMD ["init.sh"]
