#!/bin/bash
set -e

# Restart Apache
sudo systemctl enable apache2
sudo systemctl restart apache2
