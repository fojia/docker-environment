#!/bin/bash

cd /var/www/html

rm -rf bootstrap/cache/*.php
composer dumpautoload &&
php artisan cache:clear &&
php artisan config:clear &&

/var/www/html/vendor/bin/phpunit || exit 1
