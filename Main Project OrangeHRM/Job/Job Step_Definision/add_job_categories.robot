*** Settings ***
Library           SeleniumLibrary
Resource          ../Job Page_Object/login.robot
Resource          ../Configuration/Enviroment.robot
Resource          ../Job Page_Object/job_categories_add.robot

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

I navigate to job categories and click add job categories
    click element    xpath= //*[@id="menu_admin_viewAdminModule"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Job"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_jobCategory"]
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1

I fill the information
    input_text    xpath=//*[@id="jobCategory_name"]    Service Technician
    Sleep    2

I Save the information
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    close browser
