*** Settings ***
Test Template     DD_Positive_add_candidate_success_bdd
Library           SeleniumLibrary
Resource          ../StepDefinition/add_candidate.robot
Library           DataDriver    test.xlsx    sheet_name=Sheet1

*** Test Cases ***
Data_excel
    ${exc_fname}    ${exc_lname}    ${exc_email}

*** Keywords ***
DD_Positive_add_candidate_success_bdd
    [Arguments]    ${exc_fname}    ${exc_lname}    ${exc_email}
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information for ${exc_fname}, ${exc_lname} and ${exc_email}
    Then I Save the information
