sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
gunicorn hello:wsgi_application
sudo /etc/init.d/nginx restart
