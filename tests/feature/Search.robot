*** Settings ***
Resource          keyword/SearchKeyword.robot
Resource          keyword/SignInKeyword.robot
Suite Setup       SignIn Success
Suite Teardown    Close browser

*** Test Cases ***
Search
    And User input search data on search bar
    And User press Enter Button
    Then The page showed list result according to input data