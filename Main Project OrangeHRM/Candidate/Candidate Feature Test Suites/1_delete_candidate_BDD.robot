*** Settings ***
Library           SeleniumLibrary
Resource          ../Candidate StepDefinition/delete_candidate.robot
Resource          ../Candidate StepDefinition/add_candidate.robot
Resource          ../Candidate PageObject/DeleteCandi.robot

*** Test Cases ***
positive_success_delete
    Given I login into OrangeHR
    When I navigate to Candidate
    And I find candidate and click delete
    Then I get successful delete
