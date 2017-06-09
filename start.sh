#!/bin/bash

set -e

echo "Starting web services..."
service apache2 start
service mysql start

# change default mysql password

echo "Changing mysql default password"
mysqladmin -u root -p'Admin2015' password 1q2w3e

exec "$@";
