*** Settings ***
Resource            keyword/SignInKeyword.robot
Resource            keyword/addToPlaylistWithLoginKeyword.robot
Suite Setup         SignIn Success
Suite Teardown      Close browser

*** Test Cases ***
add to playlist with login
    And User open playlist page
    And User click 3 dots button
    And User click add to playlist button
    And User click oldiest playlist
    Then pop up appear
