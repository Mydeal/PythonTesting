***Settings***
Library  Seleniumlibrary


***Variables***
${url}  https://www.google.pl

***Test Cases***

start
  Zacznij  ${url}

***Keywords***
Zacznij
[Arguments]  ${url}
    Open Browser  ${url} chrome
