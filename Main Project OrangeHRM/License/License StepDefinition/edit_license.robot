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

Navigate to License and choose license
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Qualifications"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewLicenses"]
    Sleep    1
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[1]/td[2]/a

Rename new name license
    input text    xpath=//*[@id="license_name"]    Certified Analytics Professional
    Sleep    1

Rename same name license
    input text    xpath=//*[@id="license_name"]    Certified Analytics Professional
    Sleep    1

Leave blank name license
    input text    xpath=//*[@id="license_name"]    ${EMPTY}
    Sleep    1

Click save
    click element    xpath=//*[@id="btnSave"]
    Sleep    1
    close browser

Error required label appear
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be    xpath=//*[@id="frmSave"]/fieldset/ol/li[1]/span    Required
    close browser
