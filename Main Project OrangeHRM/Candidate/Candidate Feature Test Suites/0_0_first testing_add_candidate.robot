*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
add candidate
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    2
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    3
    click element    xpath=//*[@id="btnLogin"]
    Sleep    3
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_firstName"]    Alia
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    Khalid
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    aliakhalid@kmail.com
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    Choose File    xpath=//*[@id="addCandidate_resume"]    ${CURDIR}/resume_small_size.pdf
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
