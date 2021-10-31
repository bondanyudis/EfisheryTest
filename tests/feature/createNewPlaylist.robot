*** Settings ***
Resource            keyword/createNewPlaylistKeyword.robot
Resource            keyword/SignInKeyword.robot
Suite Setup         SignIn Success
Suite Teardown      Close browser

*** Test Cases ***
Create playlist
    And User click new playlist button
    And User input title
    And User input Description
    And User choose privacy
    And User click save button
    Then make sure playlist created
