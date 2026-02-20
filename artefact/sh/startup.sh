#!/bin/bash

trap "kill 0" SIGTERM SIGINT

apachectl -DFOREGROUND &

/usr/local/src/activemq/current/assembly/target/current/bin/activemq console >> /var/log/activemq/activemq.log 2>&1 &

/usr/share/tomcat10/bin/catalina.sh run &

tail -f /dev/null &

/usr/sbin/sshd -D & 

wait -n

