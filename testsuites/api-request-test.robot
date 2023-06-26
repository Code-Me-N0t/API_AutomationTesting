*** Settings ***
# Test Setup           Main Setup
# Test Teardown        Main Teardown
Resource               ../settings/main-resources.robot

*** Test Cases ***
Scenario: Get API request
    [Tags]        API Request
    I should be able to get the ID and Title