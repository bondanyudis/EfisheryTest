*** Settings ***
Resource          keyword/SignInKeyword.robot
Suite Teardown    Close browser

*** Test Cases ***
SignIn Success
    Given User open youtube music page
    When User click Sign in button
    And User input email and click next
    And User input password and click next
    Then User redirect to youtube music dashboard page