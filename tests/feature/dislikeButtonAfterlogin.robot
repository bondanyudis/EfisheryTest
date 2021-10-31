*** Settings ***
Resource            keyword/SignInKeyword.robot
Resource            keyword/dislikeButtonAfterloginKeyword.robot
Suite Setup         SignIn Success
Suite Teardown      Close browser

*** Test Cases ***
dislike button
    And User go to explore page
    And user click one of the album
    And User click dislike button
    Then "Got it, we'll tune your recommendations" pop up appear
