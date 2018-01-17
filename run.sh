#!/bin/bash
set -e

# Set the defaults
DEFAULT_RES="1280x1024x16"
DEFAULT_DISPLAY=":"99
RES=${RES:-$DEFAULT_RES}
DISPLAY=${DISPLAY:-$DEFAULT_DISPLAY}
ROBOT_TESTS=${ROBOT_TESTS:-$ROBOT_TESTS}


# Start Xvfb
echo -e "Starting Xvfb on display ${DISPLAY} with res ${RES}"
#Xvfb ${DISPLAY} -ac -screen 0 ${RES} -nolisten tcp&

Xvfb ${DISPLAY} -ac -screen 0 ${RES} &
export DISPLAY=${DISPLAY}

rm -rf /output/*

echo -e "Executing robot tests"
pybot -v BROWSER:${BROWSER} --outputdir /output -v gmail_app_password:hodxqfwsolzpebhy -v EMail:test@test.com -v VALID_USER:thapa.hari2008@gmail.com -v VALID_PASSWORD:12345abc -v PASSWORD1:12345a ${ROBOT_TESTS}


# Stop Xvfb
kill -9 $(pgrep Xvfb)