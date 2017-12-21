*** Settings ***

Library             Selenium2Library
Library             XvfbRobot

*** Variables ***
${SELENIUM_REMOTE_URL}          http://hub:4444/wd/hub
${BROWSER}           Firefox
${URL}               http://google.com


*** Test Cases ***

Connect to google site

  Open Browser         url=${URL}      browser=${BROWSER}    remote_url=${SELENIUM_REMOTE_URL}
  Title should be      Google


