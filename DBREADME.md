# mysql setting

mysql> show databases;
mysql> select user,host from mysql.user;
grant all privileges on mysite.* to django@"172.16.100.200" identified by 'password' with grant option;
grant all privileges on mysite.* to django@"172.16.100.201" identified by 'password' with grant option;

# Django setting
vi mysite/settings.py

DATABASES = {
     'default': {
         'ENGINE': 'django.db.backends.mysql',
         'NAME': 'mysite',
         'USER':'django',
         'PASSWORD':'password',
         'HOST':'172.16.100.202',
     }
 }

TIME_ZONE = 'Asia/Tokyo'
LANGUAGE_CODE = 'utf-8'

python manage.py syncdb

# mysql
mysql> show databases;
mysql> use mysite;
mysql> show tables;


#django static/admin
mysite/mysite/settings.py
import os
import sys

BASE_DIR = os.path.dirname(os.path.dirname(__file__))
PROJECT_ROOT = os.path.normpath(os.path.dirname(__file__))
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static')

python manage.py collectstatic
python manage.py collectstatic --noinput
