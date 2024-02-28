*** Settings ***
Library           SeleniumLibrary
Resource          ../Page_Object/login.robot
Resource          ../Configuration/Environment.robot

*** Keyword ***
I login into OrangeHRM
    open browser    https://opensource-demo.orangehrmlive.com/    ${Browser}
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    ${txt_username}
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    ${txt_password}
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

I navigate to job categories and click check box
    click element    xpath= //*[@id="menu_admin_viewAdminModule"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Job"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_jobCategory"]
    Sleep    1
    click element    xpath=//*[@id="ohrmList_chkSelectRecord_7"]
    Sleep    1

I click delete
    click element    xpath=//*[@id="btnDelete"]
    Sleep    2

I click ok
    click element    xpath=//*[@id="dialogDeleteBtn"]
    Sleep    2
    close browser
