#!/bin/bash
# Simple health check
curl -f http://localhost/ || exit 1
