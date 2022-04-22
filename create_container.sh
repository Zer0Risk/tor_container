#!/bin/bash
docker build . -t tor-relay_image
docker run -d -v /etc/localtime:/etc/localtime --restart always -p 9001:9001 --name tor-container tor-relay_image
