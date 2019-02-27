***Settings***

Library  SeleniumLibrary
Test Setup  zacznij  ${url}
Test Teardown  zamknij

***Variables***

${URL}  https://news.google.com/?hl=pl&gl=PL&ceid=PL:pl
${NAME}  Nauka i technika

***Test Cases***

start
    kliknij  ${NAME}
    

***Keywords***

Zacznij
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
    Maximize Browser Window
zamknij
    Close Browser

kliknij
    [Arguments]  ${name}
    Click Element  xpath://div[@aria-label="${name}"]/a[@class="SFllF" and @tabindex = '0']
