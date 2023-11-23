#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --ansi never"

cd /root || exit
$COMPOSE run certbot renew && $COMPOSE kill -s SIGHUP nginx
