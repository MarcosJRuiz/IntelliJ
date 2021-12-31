*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Title Of Page
    [Arguments]     ${title}
    Title Should Be     ${title}