#!/bin/bash

# Start SSH service
service ssh start

# Start Nginx
nginx -g 'daemon off;'