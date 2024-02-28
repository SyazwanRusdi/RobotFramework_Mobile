*** Settings ***
Library           RequestsLibrary

*** Variables ***
${API_endpoint}    https://reqres.in/

*** Test Cases ***
Request validation
    create session    API_testing    ${API_endpoint}
    ${get_respond}=    get on session    API_testing    url=/api/users/2
    ${json_respond}=    set variable    ${get_respond.json()}
    log to console    ${json_respond}
