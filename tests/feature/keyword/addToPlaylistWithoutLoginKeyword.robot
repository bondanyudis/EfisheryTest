*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***

*** Keywords ***
Given User open youtube music page
    Set Selenium Speed          0
    Open Browser                ${youtubeMusic}      ${browser}
    Maximize Browser Window
    sleep                       10s

When User go to playlist page
    click element               xpath=//*[@id="items"]/ytmusic-two-row-item-renderer[5]/a/ytmusic-item-thumbnail-overlay-renderer
    sleep                       5s
And User click 3 dots button
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/div[3]/ytmusic-browse-response/div[2]/ytmusic-detail-header-renderer/div/ytmusic-menu-renderer/tp-yt-paper-icon-button/tp-yt-iron-icon
    sleep                       5s
And User click add to playlist button
    click element               xpath=/html/body/ytmusic-app/ytmusic-popup-container/tp-yt-iron-dropdown[1]/div/ytmusic-menu-popup-renderer/tp-yt-paper-listbox/ytmusic-menu-navigation-item-renderer[2]/a
    sleep                       5s
Then sign in modal will be appear
    element should be visible   xpath=/html/body/ytmusic-app/ytmusic-popup-container/tp-yt-iron-dropdown/div/ytmusic-modal-with-title-and-button-renderer
    sleep                       5s
