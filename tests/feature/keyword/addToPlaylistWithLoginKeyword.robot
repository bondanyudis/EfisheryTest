*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***
*** Keywords ***
And User open playlist page
    click element               xpath=//*[@id="items"]/ytmusic-two-row-item-renderer[5]/a/ytmusic-item-thumbnail-overlay-renderer
    sleep                       5s
And User click 3 dots button
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/div[3]/ytmusic-browse-response/div[2]/ytmusic-detail-header-renderer/div/ytmusic-menu-renderer/tp-yt-paper-icon-button/tp-yt-iron-icon
    sleep                       5s
And User click add to playlist button
    click element               xpath=/html/body/ytmusic-app/ytmusic-popup-container/tp-yt-iron-dropdown[1]/div/ytmusic-menu-popup-renderer/tp-yt-paper-listbox/ytmusic-menu-navigation-item-renderer[2]/a
    sleep                       5s

And User click oldiest playlist
    click element                   xpath=/html/body/ytmusic-app/ytmusic-popup-container/tp-yt-iron-dropdown[2]/div/ytmusic-add-to-playlist-renderer/div[2]/div[2]/ytmusic-playlist-add-to-option-renderer/button
    sleep                           5s
    ${is visible}=                  Run Keyword And Return Status   Element Should Be Visible   id=scroller
    sleep                            5s
    Run Keyword if                  ${is visible}==True  And click duplicate button

And click duplicate button
    click element                    xpath=/html/body/ytmusic-app/ytmusic-popup-container/tp-yt-paper-dialog/yt-confirm-dialog-renderer/div[2]/div/yt-button-renderer[2]/a/tp-yt-paper-button/yt-formatted-string

Then pop up appear
    sleep                       2s
    element should be visible   xpath=//*[@id="toast"]
    sleep                       5s
