*** Setting ***
Library           SeleniumLibrary

*** Variables ***
${VariableName}    Admin
${Browser}        chrome

*** Test Cases ***
existing_job_categories
    open browser    https://opensource-demo.orangehrmlive.com/    ${Browser}
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    ${VariableName}
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1
    click element    xpath= //*[@id="menu_admin_viewAdminModule"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Job"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_jobCategory"]
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1
    input_text    xpath=//*[@id="jobCategory_name"]    Service Workers
    Sleep    2
    click element    xpath=//*[@id="btnSave"]
    Sleep    2
    close browser

*** Keywords ***
