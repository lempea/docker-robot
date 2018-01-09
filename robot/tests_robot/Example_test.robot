*** Settings ***

Library             Selenium2Library
Library             XvfbRobot


#Resource            resource/CommonResource.robot

*** Variables ***
${SELENIUM_REMOTE_URL}          http://hub:4444/wd/hub
${BROWSER}
${URL}               https://google.com


*** Test Cases ***

Connect to google site

  Open Browser         url=${URL}      browser=${BROWSER}    remote_url=${SELENIUM_REMOTE_URL}
  title should be       google
  [Teardown]

# *** Keywords ***
# Test_setup
#     ${c_opts} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#     Call Method    ${c_opts}   add_argument    headless
#     Call Method    ${c_opts}   add_argument    disable-gpu
#     Call Method    ${c_opts}   add_argument    no-sandbox
#     Call Method    ${c_opts}   add_argument    window-size\=1024,768
#     Create Webdriver    Chrome    crm_alias    chrome_options=${c_opts}
