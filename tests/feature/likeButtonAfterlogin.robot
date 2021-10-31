*** Settings ***
Resource            keyword/SignInKeyword.robot
Resource            keyword/likeButtonAfterloginKeyword.robot
Suite Setup         SignIn Success
Suite Teardown      Close browser

*** Test Cases ***
like button
    And User go to explore page
    And user click one of the album
    And User click like button
    Then "Added to your likes" pop up appear
