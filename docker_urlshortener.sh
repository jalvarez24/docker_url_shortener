#!/bin/bash
#
# Jayro Alvarez
# jayroalvarez@csu.fullerton.edu
# CPSC 254-01
#
# The docker_urlshortener.sh script takes one parameter.
# The parameters may be one of the following: start, stop, status.
#
# -start: it shall start the URL shortening container you defined.
# -stop: it shall halt the URL shortening container you defined.
# -status: If you run The status parameter shall show if the container
#   is running or not.

# Usage message to display when script detects no parameters or -h option
function usage () {
  echo "Usage:"
  echo "  ${1} start | stop | status"
  echo
  echo "  -start: it shall start the URL shortening container you defined."
  echo "  -stop: it shall halt the URL shortening container you defined."
  echo "  -status: If you run the status parameter shall show if the container."
}

# if no parameters detected, exit with usage message
if [ ${#} -lt 1 ]; then
  usage `basename ${0}`
  exit 1
fi

#for start parameter
if [ ${1}"X" = "startX" ]; then
  echo "start selected."
  docker-compose up --build -d

# for stop parameter
elif [ ${1}"X" = "stopX" ]; then
  echo "stop selected."
  docker-compose stop

# for status parameter
elif [ ${1}"X" = "statusX" ]; then
  echo "status selected."
  docker container ls

# exit with usage function if none detected
else
  usage `basename ${0}`

fi
