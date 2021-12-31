*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          https://www.google.com.br
${BROWSER}      Chrome
${DRIVERS}      C:/dev/tools/drivers/chromedriver.exe
${options}      add_experimental_option('excludeSwitches',['enable-logging'])


*** Keywords ***
Open Browser On The Page
    Open Browser    ${URL}    ${BROWSER}   options=${options}  executable_path=${DRIVERS}

Finish Browser
    Close Browser