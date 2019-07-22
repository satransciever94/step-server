sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
gunicorn -c /etc/gunicorn.d/hello.py hello:wsgi_application &
sudo /etc/init.d/nginx restart
