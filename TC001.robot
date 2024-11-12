*** Settings ***
Library        SeleniumLibrary
Resource        ../Resources/UserKeywords.robot

*** Variables ***
${Var1}        https://thetestingworld.com/

*** Test Cases ***
Login and Logout Functionality
    Open Browser        ${Var1}        Chrome
    Maximize Browser Window
    Click Element        xpath://a[contains(text(),'Quick Demo')]
    ${row}=        Read Number of Rows        Sheet1
    
    FOR        ${i}        IN RANGE        1        ${row}+1
        ${email}=        Read Excel data of cell        Sheet1    ${i}    1
        ${course}=       Read Excel Data Of Cell       Sheet1    ${i}    2
        Input Text       id:wdform_2_element2          ${email}
        Wait Until Element Is Visible   id:wdform_5_element2    timeout=5s
        Select From List By Label       id:wdform_5_element2    ${course}
        Click Element    xpath://button[@class="button-submit"]
        Sleep            5s
    END
            



    
    #Input Text        id:wdform_1_element_first2        Kasuri
    #Input Text        id:wdform_1_element_last2        Thiyumini
    #Input Text        id:wdform_2_element2        kasuri123@gmail.com
    #Input Text        xpath://input[@name="wdform_4_element2"]        0717353145
    #Click Element        xpath://td[@class="hilite day hilite selected"]
    #Wait Until Element Is Visible   id:wdform_5_element2        timeout=5s
    #Select From List By Label       id:wdform_5_element2        Selenium
    #Click Element    xpath://button[@class="button-submit"]
