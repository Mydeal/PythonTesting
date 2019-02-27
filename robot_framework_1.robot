***Settings***
Library  SeleniumLibrary

***Variables***
${URL}  https://news.google.com/?hl=pl&gl=PL&ceid=PL:pl

***Test Cases***

start
    Zacznij  ${URL}

***Keywords***

Zacznij
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
zamknij
    Close Browser

kliknij
  Click Button class:_13q9y _8hkto _1va2z _t18e8 _1sql3 _3uq8h