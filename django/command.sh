#!/bin/bash
python /home/docker/backend/bootstrap.py
mkdir -p /var/log/backend/supervisor/
mkdir -p /var/log/supervisor/
mkdir -p /tmp/backend/
/usr/local/bin/uwsgi --ini /home/docker/backend/conf/uwsgi.ini
/usr/local/bin/supervisord
