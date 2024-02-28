*** Settings ***
Library           SeleniumLibrary
Resource          ../Add_nationalities_res/Add_nationalities_res.robot

*** Test Cases ***
add_nation_bdd
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Click button add
    And Fill in information 1
    Then Save information
