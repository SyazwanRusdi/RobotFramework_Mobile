*** Settings ***
Suite Setup       Login and navigate to add candidate
Test Template     DD add candidate
Library           SeleniumLibrary

*** Test Cases ***
Abu Khan
    ALi    Khan    abukhan@kmail.com

Siti Chan
    Siti    Chan    sitichan@kmail.com

Aiman Cena
    Aiman    Cena    aimancena@kmail.com

*** Keywords ***
Login and navigate to add candidate
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]

Add candidate DD
    [Arguments]    ${dd_fname}    ${dd_lname}    ${dd_email}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_firstName"]    ${dd_fname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    ${dd_lname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    ${dd_email}
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
