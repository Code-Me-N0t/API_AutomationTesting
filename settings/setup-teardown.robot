*** Keywords ***
Main Setup
    [Arguments]                    ${URL}
    Empty Directory                ../api/testsuites/screenshots
    Set Screenshot Directory       ../api/testsuites/screenshots
    Open Browser                   ${URL}        
    ...                            Google Chrome
    Maximize Browser Windows

Launch Testing Website
    [Arguments]                    ${URL}
    Main Setup                     ${URL}

Main Teardown
    Capture Page Screenshot
    Close All Browsers