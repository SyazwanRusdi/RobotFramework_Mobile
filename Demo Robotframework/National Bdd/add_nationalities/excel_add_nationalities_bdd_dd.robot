*** Settings ***
Test Template     Add national keyword
Library           SeleniumLibrary
Resource          ../Add_nationalities_res/Add_nationalities_res.robot
Library           DataDriver    test.xlsx   sheet_name=Sheet1

*** Test Cases ***
Perlis   ${exc_national}

*** Keywords ***
Add national keyword
    [Arguments]    ${exc_national}
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Click button add
    And Fill in information dd ${exc_national}
    Then Save information
