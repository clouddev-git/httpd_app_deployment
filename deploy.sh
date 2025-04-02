#!/bin/bash

# Stop and remove any existing httpd container
docker stop httpd-container || true
docker rm httpd-container || true

# Run new httpd container
docker run -d --name httpd-container -p 80:80 my-httpd-image
