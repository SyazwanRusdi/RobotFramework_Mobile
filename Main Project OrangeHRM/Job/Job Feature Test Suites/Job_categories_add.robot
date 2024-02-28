*** Setting ***
Library           SeleniumLibrary

*** Variables ***
${txt_username}    Admin
${txt_password}    admin123
${Browser}        chrome

*** Test Cases ***
add job categories
    open browser    https://opensource-demo.orangehrmlive.com/    ${Browser}
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    ${txt_username}
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    ${txt_password}
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
    input_text    xpath=//*[@id="jobCategory_name"]    Engineering
    Sleep    2
    click element    xpath=//*[@id="btnSave"]
    Sleep    2
    close browser

*** Keywords ***
