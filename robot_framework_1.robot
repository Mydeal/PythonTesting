***Settings***

Library  SeleniumLibrary

***Variables***

${URL}  https://www.ebay.pl


***Test Cases***

first-test-case
    
    Given open  ${URL}
    
    and maximize
    When click  
    and sign_in  petrurirta@desoz.com  Pa$$w0rd 
    and  nifyuhordu@desoz.com  Pa$$w0rd2
    and  |princeanthony.aidden@cowstore.org|  |Pa$$w0rd3|

    Then close
    

***Keywords***

open
    [Arguments]  ${url}
    Open Browser  ${url}  chrome


maximize
    Maximize Browser Window
close
    Close Browser

click
    Click Element  xpath://a[@_sp="m570.l1524"]
    
log_out
    Mouse Over  xpath://button[@id="gh-ug"]
    Sleep  2s
    Click Element  xpath://*[contains(text(),"Wyloguj się")]


sign_in
    [Arguments]  ${login}  ${password}
    Input text  xpath://input[@id="userid"]  ${login}
    Input password  xpath://input[@id="pass"]  ${password}   
    enter
    log_out 

enter
    Click Element  xpath://button[@id="sgnBt"]

***Comments***
 Given When Then and <- po tych słowach kluczowych tylko 1 spacja przerwy
 Test Setup  zacznij  ${url}
 Test Teardown  zamknij

 petrurirta@desoz.com  Pa$$w0rd
 nifyuhordu@desoz.com  Pa$$w0rd2
 princeanthony.aidden@cowstore.org  Pa$$w0rd3
 
