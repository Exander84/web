sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
django-admin startproject ask
chmod 777 ask/manage.py
ask/manage.py startapp ask/qa
cp views.py ask/qa/
cp urls.py ask/qa/
