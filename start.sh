#!/bin/bash

set -e

service apache2 start
service mysql start

exec "$@";
