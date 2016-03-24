sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
django-admin startproject ask
chmod 777 ask/manage.py
cd ask
./manage.py startapp qa
cd ..
cp views.py ask/qa/
pwd
cp urls.py ask/ask/
pwd
cp urls.py ask/qa/
cd ask
cd ask
sudo gunicorn --bind 0.0.0.0:8000 --access-logfile acs.log --error-logfile err.log wsgi:application &
