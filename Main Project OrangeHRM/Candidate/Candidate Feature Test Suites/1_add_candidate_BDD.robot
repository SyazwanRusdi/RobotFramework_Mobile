*** Settings ***
Library           SeleniumLibrary
Resource          ../Candidate StepDefinition/add_candidate.robot

*** Test Cases ***
Positive_add_candidate_success_bdd
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information
    Then I Save the information

Negative_add_candidate_email_fail_bdd
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information with wrong email format
    Then I got email error

Negative_add_candidate_fillblank_bdd
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I do not fill information
    Then I got required error if fill blank

Negative_add_candidate_resume_exceed_bdd
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information but resume size is exceed
    Then I got exceed error
