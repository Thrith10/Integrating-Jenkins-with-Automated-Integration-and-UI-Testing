#!/usr/bin/env sh

set -x

# Convert Windows path to Docker-compatible format
DOCKER_PATH='/mnt/c/Users/renes/Downloads/jenkins-php-selenium-test/jenkins-php-selenium-test/src'

# Run Docker container
docker run -d -p 80:80 --name my-apache-php-app -v "$DOCKER_PATH":/var/www/html php:7.2-apache

# Sleep for a while to ensure the container starts
sleep 10

set +x

# Print completion message
echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
