***Settings***
Library  SeleniumLibrary
 Test Teardown  close
***Variables***

${URL}  https://www.ebay.pl


***Test Cases***
first-test-case
    Given open_page  ${URL}
    and maximize
    FOR     ${login}                            ${password}     IN
    ...          petrurirta@desoz.com               Pa$$w0rd  
    ...          nifyuhordu@desoz.com               Pa$$w0rd2
    ...          princeanthony.aidden@cowstore.org  Pa$$w0rd3
        When click_sign_in_button
        When sign_in  ${login}  ${password}
        When confirm_sign_in
        Then Capture Page Screenshot  filename=ebay-${login}.jpg
        When log_out 
    END   
    Then close
    

***Keywords***

open_page
    [Arguments]  ${url}
    Open Browser  ${url}  chrome


maximize
    Maximize Browser Window
close
    Close Browser

click_sign_in_button
    Click Element  xpath://a[@_sp="m570.l1524"]
    
log_out
    Mouse Over  xpath://button[@id="gh-ug"]
    Sleep  2s
    Click Element  xpath://*[contains(text(),"Wyloguj się")]


sign_in
    [Arguments]  ${login}  ${password}
    Input text  xpath://input[@id="userid"]  ${login}
    Input password  xpath://input[@id="pass"]  ${password}   
    

confirm_sign_in
    Click Element  xpath://button[@id="sgnBt"]

***Comments***
 Given When Then and <- po tych słowach kluczowych tylko 1 spacja przerwy
 Test Setup  zacznij  ${url}


 petrurirta@desoz.com
 nifyuhordu@desoz.com
 princeanthony.aidden@cowstore.org

 xpath://div[contains(text(),"Może później")]
 
