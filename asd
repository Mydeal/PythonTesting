*** Settings ***
Library  Selenium2Library

*** Variables ***
${url}  http://www.wp.pl

*** Test Cases ***

start
Zacznij ${url}

*** Keywords ***
Zacznij
    [Arguments]  ${url}
    Open Browser  ${url}  chrome