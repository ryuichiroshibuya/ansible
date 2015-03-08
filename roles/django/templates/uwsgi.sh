#!/bin/bash
cd /home/django/apps/mysite
uwsgi --master --grunt --close-on-exec \
  --socket 127.0.0.1:3031  \
  --processes 2 \
  --pidfile /home/django/uwsgi.pid \
  --wsgi-file wsgicaty.py --callable main_app \
  --daemonize /home/django/uwsgi.log
