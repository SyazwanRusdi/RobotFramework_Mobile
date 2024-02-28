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

Click Add
    click element    xpath=//*[@id="btnAdd"]

Fill the information 1
    input_text    xpath=//*[@id="license_name"]    Certified Information Systems Security Professional (CISSP)
    Sleep    1

Fill the information 2
    input_text    xpath=//*[@id="license_name"]    Certified Analytics Professional (CAP)
    Sleep    1

Fill the information 3
    input_text    xpath=//*[@id="license_name"]    Certified Secure Software Lifecycle Professional (CSSLP)
    Sleep    1

Fill the information 4
    input_text    xpath=//*[@id="license_name"]    Certified Cloud Security Professional (CCSP)
    Sleep    1

Save the information
    click element    xpath=//*[@id="btnSave"]
    Sleep    3

Did not fill information
    Sleep    2

Error label will appear
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be    xpath=//*[@id="frmSave"]/fieldset/ol/li[1]/span    Required
    close browser

DD fill information ${license_name}
    input_text    xpath=//*[@id="license_name"]    ${license_name}
    Sleep    1
