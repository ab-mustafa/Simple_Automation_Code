*** Settings ***
Library    RequestsLibrary

*** Variables ***
${name1}    Abdallah
${name2}    Maya
${name3}    Olivia

*** Test Cases ***
Test API with American name
    ${response}=    GET    https://api.nationalize.io/    params=name=${name2}    expected_status=200
    log    ${response.json()}
    Should Be Equal As Strings    ${response.json()}[name]    ${name2}
    

Test API with Arabic name
    ${response}=    GET    https://api.nationalize.io/    params=name=${name1}    expected_status=200
    log    ${response.json()}
    Should Be Equal As Strings    ${response.json()}[name]    ${name1}

Test API with European name
    ${response}=    GET    https://api.nationalize.io/    params=name=${name3}    expected_status=200
    log    ${response.json()}
    Should Be Equal As Strings    ${response.json()}[name]    ${name3}

