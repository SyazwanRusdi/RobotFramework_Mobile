*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
login success
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin123
    click element    xpath=//*[@id="btnLogin"]
