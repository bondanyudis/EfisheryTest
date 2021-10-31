*** Settings ***
Resource            keyword/addToLibraryWithoutLoginKeyword.robot
Suite Teardown      Close browser

*** Test Cases ***
addTo library
    Given User open youtube music page
    When User go to playlist page
    And User click add to library button
    Then sign in modal will be appear
