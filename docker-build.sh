#!/bin/sh
docker build . -t feedback-history-svc
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 feedback-history-svc"
