user  nobody;
worker_processes  {{ worker_processes }};
 
events {
    worker_connections  {{ worker_connections }};
}
 
http {
    include       mime.types;
    sendfile        on;
    keepalive_timeout  65;
 
    server {
        listen       80;
        server_name  {{ servername }};
 
        location / {
            include uwsgi_params;
	    uwsgi_pass {{ uwsgi_pass }}; 
        }
 
        location ^~ /static {
            root {{ root }};
        }
 
        location /static/admin {
            alias {{ alias }};
        }
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
    }
}
