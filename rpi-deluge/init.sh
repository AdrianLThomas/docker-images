#!/bin/bash

getent group $DELUGE_GROUP
group_exists=$?

getent passwd $DELUGE_USER
user_exists=$?

if [ $group_exists -ne 0 ]; then
  groupadd $DELUGE_GROUP
fi

if [ $user_exists -ne 0 ]; then
  useradd -d /var/lib/deluge -s /bin/false -g $DELUGE_GROUP $DELUGE_USER
  chown -R $DELUGE_USER:$DELUGE_GROUP /var/lib/deluge
fi

exec /usr/bin/supervisord


