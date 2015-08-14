# reutersfr
Center www.reuters.fr website by using a HTML frame hack

##Download dependencies into local virtualenv
```
. make-env.sh
```
##Run your server
###Manually
```
python runserver.py
```
###or with Supervisord
```
cp supervisor*conf /etc/supervisord/
service supervisor restart`
```
