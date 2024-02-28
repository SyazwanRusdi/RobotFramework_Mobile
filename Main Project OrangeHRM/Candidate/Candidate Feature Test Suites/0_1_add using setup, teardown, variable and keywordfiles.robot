*** Settings ***
Test Setup        Login_Keyword
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Variables ***
${fname}          Alia
${lname}          Khalidah
${email}          alikhalidah@kmail.com
${resume}         ${CURDIR}/resume_small_size.pdf

*** Test Cases ***
add candidate
    Sleep    1
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1
    Add candidate ${fname} and ${lname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    ${email}
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    Choose File    xpath=//*[@id="addCandidate_resume"]    ${resume}
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2

delete
    Sleep    1
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    input text    xpath=//*[@id="candidateSearch_candidateName"]    Alia Khalidah
    Sleep    1
    click element    xpath=//*[@id="btnSrch"]
    Sleep    1
    Select Checkbox    //*[@id="ohrmList_chkSelectAll"]
    click element    xpath=//*[@id="btnDelete"]
    click element    xpath=//*[@id="dialogDeleteBtn"]
    Sleep    3

*** Keywords ***
Login_Keyword
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    2
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    3
    click element    xpath=//*[@id="btnLogin"]
    Sleep    2

Add candidate ${firstname} and ${lastname}
    input_text    xpath=//*[@id="addCandidate_firstName"]    ${firstname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    ${lastname}
