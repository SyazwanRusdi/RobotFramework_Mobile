*** Settings ***
Library           SeleniumLibrary
Resource          ../Candidate PageObject/DeleteCandi.robot

*** Keywords ***
I find candidate and click delete
    input text    xpath=//*[@id="candidateSearch_candidateName"]    Ali Khalid
    Sleep    1
    click element    xpath=//*[@id="btnSrch"]
    Sleep    1
    Select Checkbox    xpath=//*[@id="ohrmList_chkSelectRecord_23_6"]
    click element    xpath=//*[@id="btnDelete"]
    click element    xpath=//*[@id="dialogDeleteBtn"]

I navigate to Candidate
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b

I get successful delete
    Sleep    3
    Close Browser
