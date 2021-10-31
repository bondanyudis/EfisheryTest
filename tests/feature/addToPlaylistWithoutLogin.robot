*** Settings ***
Resource            keyword/addToPlaylistWithoutLoginKeyword.robot
Suite Teardown      Close browser

*** Test Cases ***
addTo playlist without login
    Given User open youtube music page
    When User go to playlist page
    And User click 3 dots button
    And User click add to playlist button
    Then sign in modal will be appear
