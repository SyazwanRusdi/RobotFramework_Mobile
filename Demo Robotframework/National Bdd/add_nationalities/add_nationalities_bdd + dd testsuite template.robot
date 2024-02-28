*** Settings ***
Test Template     Add national keyword
Library           SeleniumLibrary
Resource          ../Add_nationalities_res/Add_nationalities_res.robot

*** Test Cases ***    national
Kedah                 North Kedah
                      South Kedah

Penang                Penang island
                      Penang Landed

*** Keywords ***
Add national keyword
    [Arguments]    ${national}
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Click button add
    And Fill in information dd ${national}
    Then Save information
