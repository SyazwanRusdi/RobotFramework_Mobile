*** Settings ***
Library           SeleniumLibrary
Resource          ../Job Step_Definision/add_job_categories.robot

*** Test Cases ***
add_job_categories
    Given I login into OrangeHRM
    When I navigate to job categories and click add job categories
    And I fill the information
    Then I save the information
