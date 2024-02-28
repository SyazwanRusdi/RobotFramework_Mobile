*** Settings ***
Library           RequestsLibrary

*** Variables ***
${API_endpoint}    https://reqres.in/

*** Test Cases ***
Get Request
    create session    API_testing    ${API_endpoint}
    ${get_respond}=    get on session    API_testing    url=/api/users/2
    log to console    ${get_respond.status_code}
    log to console    ${get_respond.content}
    ${status_code}    convert to string    ${get_respond.status_code}
    should be equal    ${status_code}    200
