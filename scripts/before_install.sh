#!/bin/bash
set -e

# Stop Apache before deployment
sudo systemctl stop apache2 || true

# Backup existing release
timestamp=$(date +%s)
if [ -d /var/www/html ]; then
  sudo mv /var/www/html /var/www/laravel_backup_$timestamp
fi
