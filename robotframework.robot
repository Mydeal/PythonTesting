*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}  https://allegro.pl/
${NAME}  departments_Elektronika

*** Test Cases ***

first-test-case
    Given get   ${URL} 
    and Maximize
    When click   ${NAME}
    Then close

*** Keywords ***

get
    [Arguments]  ${url}
    Open Browser  ${url} chrome
maximize
    Maximize Browser Window
close
    Close Browser
click
    [Arguments]  ${name}
    Click Element  xpath://div[@aria-label="${name}"]/a[@class="SFllF" and @tabindex = '0']


***Comments***
 Given When Then and <- po tych słowach kluczowych tylko 1 spacja przerwy
 Test Setup  zacznij  ${url}
Test Teardown zamknij