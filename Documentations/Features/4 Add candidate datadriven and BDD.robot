*** Settings ***
Test Template     DD_Positive_add_candidate_success_bdd
Library           SeleniumLibrary
Resource          ../StepDefinition/add_candidate.robot

*** Test Cases ***
Abu Khan
    Abu    Khan    abukhan@kmail.com

Siti Chan
    Siti    Chan    sitichan@kmail.com

Aiman Cena
    Aiman    Cena    aimancena@kmail.com

*** Keywords ***
DD_Positive_add_candidate_success_bdd
    [Arguments]    ${dd_fname}    ${dd_lname}    ${dd_email}
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information for ${dd_fname}, ${dd_lname} and ${dd_email}
    Then I Save the information
