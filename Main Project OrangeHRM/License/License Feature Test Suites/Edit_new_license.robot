*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Sucessfully rename new license
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Qualifications"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewLicenses"]
    Sleep    1
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[1]/td[2]/a
    Sleep    1
    input text    xpath=//*[@id="license_name"]    Certified Analytics Professional
    Sleep    1
    click element    xpath=//*[@id="btnSave"]
    Sleep    1
    close browser

User leave the field blank
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Qualifications"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewLicenses"]
    Sleep    1
    click element    xpath=//*[@id="recordsListTable"]/tbody/tr[1]/td[2]/a
    Sleep    1
    input text    xpath=//*[@id="license_name"]    ${EMPTY}
    Sleep    1
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be    xpath=//*[@id="frmSave"]/fieldset/ol/li[1]/span    Required
    close browser
