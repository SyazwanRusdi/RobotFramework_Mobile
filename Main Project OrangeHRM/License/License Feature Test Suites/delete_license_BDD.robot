*** Settings ***
Library           SeleniumLibrary
Resource          ../License StepDefinition/delete_license.robot

*** Test Cases ***
Positive_Successfully delete a license
    Given Login into OrangeHR
    When Navigate to License
    And Select checkbox
    Then Click Delete

Positive_Successfully delete more than one license
    Given Login into OrangeHR
    When Navigate to License
    And Select more than one checkbox
    Then Click Delete
