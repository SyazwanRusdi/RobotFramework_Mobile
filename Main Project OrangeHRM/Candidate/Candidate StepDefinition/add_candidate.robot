*** Settings ***
Library           SeleniumLibrary
Resource          ../Candidate PageObject/Login.robot
Resource          ../Configuration/Enviroment.robot
Resource          ../Candidate PageObject/AddCandi.robot

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
    Choose File    ${ac_uploadresume}    ${CURDIR}/resume_small_size.pdf
    Sleep    1

I Save the information
    click element    ${ac_save}
    Sleep    3
    click element    ${ac_back_aftersave}
    Sleep    2

I got email error
    click element    ${ac_save}
    Sleep    3
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span    Expected format: admin@example.com

I got required error if fill blank
    click element    ${ac_save}
    Sleep    3
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[1]/span    Required
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[3]/span    Required
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span    Required

I do not fill information
    Sleep    2

I got exceed error
    click element    ${ac_save}
    element text should be    xpath=//*[@id='addCandidate']/div[2]/div    Failed to Save: File Size Exceeded

I fill the information with wrong email format
    input_text    ${ac_lname}    Ali
    Sleep    1
    input_text    ${ac_fname}    Khalid
    Sleep    1
    input_text    ${ac_email}    alikhalid
    Sleep    1
    Select From List By Label    ${ac_jobva}    Senior QA Lead
    Sleep    1
    Choose File    ${ac_uploadresume}    ${CURDIR}/resume_small_size.pdf
    Sleep    1

I fill the information but resume size is exceed
    input_text    ${ac_lname}    Ali
    Sleep    1
    input_text    ${ac_fname}    Khalid
    Sleep    1
    input_text    ${ac_email}    alikhalid@kmail.com
    Sleep    1
    Select From List By Label    ${ac_jobva}    Senior QA Lead
    Sleep    1
    Choose File    ${ac_uploadresume}    ${CURDIR}/sample_resume_big_size.pdf
    Sleep    1

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
