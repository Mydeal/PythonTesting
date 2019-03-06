***Settings***

Library  SeleniumLibrary

***Variables***

${URL}  https://news.google.com/?hl=pl&gl=PL&ceid=PL:pl
${NAME}  Nauka i technika

***Test Cases***

first-test-case
    Given zacznij  ${URL}
    and maximize
    When click  ${NAME}
    Then close
    

***Keywords***

zacznij
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
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
 Test Teardown  zamknij
 