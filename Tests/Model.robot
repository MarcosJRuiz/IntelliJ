*** Settings ***
#  Used for Importing test libraries, resource files and variable files.

Documentation   Simple example using SeleniumLibrary.
Library         SeleniumLibrary


*** Variables ***
# Used for defining variables that can be used elsewhere in the test.

${URL}          https://www.google.com.br
${BROWSER}      Chrome
${DRIVERS}      C:/dev/tools/drivers/chromedriver.exe
${options}      add_experimental_option('excludeSwitches',['enable-logging'])


*** Test Cases ***
# Used for writing our tests.

Valid Login
    Open Browser To Login Page
    Search Google       fast.com
    Title Of Page       fast.com - Pesquisa Google
    Close Browser


*** Keywords ***
# Used for creating custom keywords from existing lower-level keywords.

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}   options=${options}  executable_path=${DRIVERS}

Search Google
    [Arguments]     ${valueSearch}
    Input Text      //input[@title="Pesquisar"]    ${valueSearch}
    Sleep   2s
    Press Keys      //input[@title="Pesquisar"]     ENTER
    Sleep   2s

Title Of Page
    [Arguments]     ${title}
    Title Should Be     ${title}