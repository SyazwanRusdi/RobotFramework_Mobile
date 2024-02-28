*** Settings ***
Library           SeleniumLibrary
Resource          ../Add_nationalities_res/Add_nationalities_res.robot

*** Test Cases ***    national
Peru                  [Template]    Add national keyword 1 ${national}
                      North peru
                      South peru

*** Keywords ***
Add national keyword 1 ${national}
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Click button add
    And Fill in information dd ${national}
    Then Save information
