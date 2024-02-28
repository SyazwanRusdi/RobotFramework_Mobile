*** Settings ***
Test Setup        Open test browser
Test Teardown     Close test browser
Resource          ../Resources/Common_login.robot

*** Variables ***

*** Test Cases ***
Login oranghr
    input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin123
    click element    xpath=//*[@id="btnLogin"]
    sleep    10
    element text should be    xpath=//*[@id="content"]/div/div[1]/h1    Dashboard

Login test fail
    input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin1234
    click element    xpath=//*[@id="btnLogin"]
    sleep    10
    element text should be    xpath=//*[@id="content"]/div/div[1]/h1

# Write on terminal: robot Tests/sample_test_login.robot
