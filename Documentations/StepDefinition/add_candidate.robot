*** Settings ***
Library           SeleniumLibrary
Resource          ../StepDefinition/Login xpath variable.robot
Resource          ../StepDefinition/AddCandi xpath variable.robot

*** Keyword ***
I login into OrangeHR
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

I navigate to Candidate and click add
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]

I fill the information
    input_text    ${ac_lname}    Ali
    Sleep    1
    input_text    ${ac_fname}    Khalid
    Sleep    1
    input_text    ${ac_email}    alikhalid@kmail.com
    Sleep    1
    Select From List By Label    ${ac_jobva}    Senior QA Lead
    Sleep    1
    Choose File    ${ac_uploadresume}    ${CURDIR}/resume_small.pdf
    Sleep    1

I Save the information
    click element    ${ac_save}
    Sleep    3
    click element    ${ac_back_aftersave}
    Sleep    2

I fill the information for ${firstname}, ${lastname} and ${email}
    input_text    ${ac_lname}    ${firstname}
    Sleep    1
    input_text    ${ac_fname}    ${lastname}
    Sleep    1
    input_text    ${ac_email}    ${email}
    Sleep    1
    Select From List By Label    ${ac_jobva}    Senior QA Lead
    Sleep    1
    Choose File    ${ac_uploadresume}    ${CURDIR}/resume_small.pdf
    Sleep    1
