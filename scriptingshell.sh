#!/bin/bash

#Premier dépatrement
mkdir -p /var/www/dep-info
chmod 777 /var/www/dep-info
cd /var/www/dep-info
touch index1.html && python3 -m http.server 3001 &
chmod 770 index1.html
echo "<h1>Bienvenue dans le département Informatique</h1>" > index.html
cd ..

#deuxième département
mkdir -p /var/www/dep-manage
chmod 777 /var/www/dep-manage
cd /var/www/dep-manage && python3 -m http.server 3002 &
touch index2.html
chmod 777 index2.html
echo "<h1>Bienvenue dans le département management</h1>" > index.html
cd ..

#troisième département
mkdir -p /var/www/dep-mark
chmod 770 /var/www/dep-mark
cd /var/www/dep-mark && python3 -m http.server 3003 &
touch index3.html 
chmod 770 index3.html
echo "<h1>Bienvenue dans le département marketing</h1>" > index.html
cd ..

# Redémarrer Nginx
systemctl restart nginx