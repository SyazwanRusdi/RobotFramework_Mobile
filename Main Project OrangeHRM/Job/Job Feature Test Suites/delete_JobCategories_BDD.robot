*** Settings ***
Library           SeleniumLibrary
Resource          ../Job Step_Definision/delete_job_categories.robot

*** Test Cases ***
delete_job_categories
    Given I login into OrangeHRM
    When I navigate to job categories and click check box
    And I click delete
    Then I click ok
