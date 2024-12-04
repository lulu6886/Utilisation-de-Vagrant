#!/bin/bash
mkdir var
mkdir var/www

#Premier dépatrement
mkdir -p /var/www/dep-info
chmod 770 /var/www/dep-info
cd /var/www/dep-info
touch index.html
chmod 770 index.html
echo "<h1>Bienvenue dans le département Informatique</h1>" > index.html
python3 -m http.server 3001
cd ..

#deuxième département
mkdir -p /var/www/dep-manage
chmod 770 /var/www/dep-manage
cd /var/www/dep-manage
touch index.html
chmod 770 index.html
echo "<h1>Bienvenue dans le département management</h1>" > index.html
python3 -m http.server 3002
cd ..

#troisième département
mkdir -p /var/www/dep-mark
chmod 770 /var/www/dep-mark
cd /var/www/dep-mark
touch index.html 
chmod 770 index.html
echo "<h1>Bienvenue dans le département marketing</h1>" > index.html
python3 -m http.server 3003
cd ..