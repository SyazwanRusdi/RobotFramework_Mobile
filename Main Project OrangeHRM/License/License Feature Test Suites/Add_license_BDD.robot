*** Settings ***
Library           SeleniumLibrary
Resource          ../License StepDefinition/add_license.robot

*** Test Cases ***
Positive_Successfully add new license
    Given Login into OrangeHR
    When Navigate to License
    When click Add
    And Fill the information 1
    Then Save the information
    When click Add
    And Fill the information 2
    Then Save the information
    When click Add
    And Fill the information 3
    Then Save the information
    When click Add
    And Fill the information 4
    Then Save the information

Negative_User enter the same license
    Given Login into OrangeHR
    When Navigate to License
    When click Add
    And Fill the information 1
    Then Save the information

Negative_user did not enter any license name
    Given Login into OrangeHR
    When Navigate to License
    When click Add
    And Did not fill information
    Then Error label will appear
