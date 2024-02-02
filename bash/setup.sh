#!/bin/bash -e

echo "test" > /var/www/html/index.html

service apache2 start
