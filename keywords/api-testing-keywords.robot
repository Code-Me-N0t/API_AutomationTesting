*** Keywords ***
I should be able to get the ID and Title
    Creating A Session                ${api_session_url}
    ${response}                       GET On Session        
    ...                               jsonplaceholder
    ...                               /todos/
    Should Be Equal As Strings        ${response.status_code}        200
    ${post}                           Set Variable                   ${response.json()}
    Log To Console                    ${post}

    Run Keyword If                    not ${post}        Fail        No post found!

    # Log To Console                  Post ID: ${post['id']}
    # Log To Console                  Title: ${post['title']}

    FOR    ${item}    IN    @{post}
        Log To Console    ${item}[id]
        Log To Console    ${item}[title]
    END

