*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}  https://allegro.pl/
${REGULATION_BUTTON_XPATH}  xpath://button[@class="_13q9y _8tsq7 _7qjq4 _qozgg"]
${ELECTRONICS_XPATH}  xpath://a[@class="_sm3us _1241k _882d6_Ra6-P"]

*** Test Cases ***

first-test-case
    Given get   ${URL} 
    and Maximize
    When click   ${REGULATION_BUTTON_XPATH}
    Then click  ${ELECTRONICS_XPATH}
    Then close

*** Keywords ***

get
    [Arguments]  ${url}
    Open Browser  ${url}
maximize
    Maximize Browser Window
close
    Close Browser
click
    [Arguments]  ${xpath}
    Click Element  ${xpath}


***Comments***