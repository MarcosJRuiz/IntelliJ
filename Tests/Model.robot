*** Settings ***
#  Used for Importing test libraries, resource files and variable files.
Resource    ../Resources/KeywordsDefination/DriverFactore.robot
Resource    ../Resources/KeywordsDefination/CommonsKeyword.robot
Variables   ../Resources/Locators/ModelLocators.py
Variables   ../Resources/Data/ModelData.py

Documentation   Simple example using SeleniumLibrary.
Suite Setup     Open Browser On The Page
Suite Teardown  Finish Browser


*** Variables ***
# Used for defining variables that can be used elsewhere in the test.


*** Test Cases ***
# Used for writing our tests.

Valid Login
    Search Google       ${Value_Search}
    Title Of Page       ${Result_Search}


*** Keywords ***
# Used for creating custom keywords from existing lower-level keywords.

Search Google
    [Arguments]     ${valueSearch}
    Input Text      ${Input_Search}    ${valueSearch}
    Sleep   1s
    Press Keys      ${Input_Search}     ENTER
