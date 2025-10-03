#!/bin/bash
set -e
cd /var/www/html

# Ensure storage and cache directories exist
mkdir -p storage bootstrap/cache

sudo composer install --no-dev --optimize-autoloader

# Set permissions (Ubuntu’s Apache user is www-data)
sudo chown -R www-data:www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache

