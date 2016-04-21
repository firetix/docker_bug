#!/bin/bash
python /home/docker/django/bootstrap.py
mkdir -p /var/log/backend/supervisor/
mkdir -p /var/log/supervisor/
mkdir -p /tmp/backend/
/usr/local/bin/uwsgi --ini /home/docker/django/conf/uwsgi.ini
/usr/local/bin/supervisord
