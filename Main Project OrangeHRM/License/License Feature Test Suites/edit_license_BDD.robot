*** Settings ***
Library           SeleniumLibrary
Resource          ../License StepDefinition/edit_license.robot

*** Test Cases ***
Positive_Sucessfully rename the license
    Given Login into OrangeHR
    When Navigate to License and choose license
    And Rename new name license
    Then Click save

Negative_User enter the same license
    Given Login into OrangeHR
    When Navigate to License and choose license
    And Rename same name license
    Then Click save

Negative_User leave the form blank
    Given Login into OrangeHR
    When Navigate to License and choose license
    And Leave blank name license
    Then Error required label appear
