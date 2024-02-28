*** Settings ***
Library           SeleniumLibrary

*** Keyword ***
Login into OrangeHR
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

Navigate to License
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Qualifications"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewLicenses"]
    Sleep    1

Select checkbox
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[2]/td[1]/input
    Sleep    1

Select more than one checkbox
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[5]/td[1]/input
    Sleep    1
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[6]/td[1]/input
    Sleep    1

Click Delete
    click element    xpath=//*[@id="btnDel"]
    Sleep    2
    close browser
