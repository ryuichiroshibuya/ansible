user  nobody;
worker_processes  {{ worker_processes }};

events {
    worker_connections  {{ worker_connections }};
}
http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';

    access_log  /var/log/nginx/access.log  main;

    sendfile         on;

    keepalive_timeout  5;

    gzip             on;
    gzip_disable     "MSIE [1-6]\.";

    upstream backend {
       server 127.0.0.1:8000;
    }
    server {
        listen       80;
        server_name  {{ server_name }};


        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Real-IP $remote_addr;

        location / {
           proxy_pass http://backend/;
           include uwsgi_params;
        }

        location /static/admin {
            alias /home/django/apps/mysite/static/admin;
        }

    }

    # Load config files from the /etc/nginx/conf.d directory
    include /etc/nginx/conf.d/*.conf;
}
