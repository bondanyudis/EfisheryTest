*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***
${EMAIL}            tefishery@gmail.com
${PASSWORD}         yud1st1r4

*** Keywords ***
Given User open youtube music page
    Set Selenium Speed          0
    Open Browser                ${youtubeMusic}      ${browser}
    Maximize Browser Window
    sleep                       10s

When User click Sign in button
    click element               xpath=//*[@id="right-content"]/a
    sleep                       10s

And User input email and click next
    click element               id=identifierId
    input text                  id=identifierId                 ${EMAIL}
    click element               xpath=//*[@id="identifierNext"]/div/button/span
    sleep                       10s

And User input password and click next
    input text                  name=password                   ${PASSWORD}
    click element               xpath=//*[@id="passwordNext"]/div/button/span
    sleep                       10s

Then User redirect to youtube music dashboard page
    sleep                       3s
    element should be visible   xpath=//*[@id="layout"]/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[1]
    sleep                       3s

SignIn Success
    Given User open youtube music page
    When User click Sign in button
    And User input email and click next
    And User input password and click next
    Then User redirect to youtube music dashboard page