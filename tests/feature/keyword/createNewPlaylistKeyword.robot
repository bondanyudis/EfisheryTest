*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***
${TITLE}            oldiest album song's3
${DESCRIPTION}      group of oldiest song3


*** Keywords ***
And User click new playlist button
    click element               xpath=//*[@id="layout"]/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[3]/yt-formatted-string
    sleep                       4s
    click element               id=img

And User input title
    sleep                       4s
    input text                  xpath=/html/body/ytmusic-dialog/tp-yt-paper-dialog-scrollable/div/div/ytmusic-playlist-form/iron-pages/div[1]/div[1]/tp-yt-paper-input/tp-yt-paper-input-container/div[2]/div/iron-input/input          ${TITLE}

And User input Description
    input text                  id=textarea                             ${DESCRIPTION}

And User choose privacy
    click element               xpath=/html/body/ytmusic-dialog/tp-yt-paper-dialog-scrollable/div/div/ytmusic-playlist-form/iron-pages/div[1]/div[1]/tp-yt-paper-dropdown-menu/tp-yt-paper-menu-button/div/div/tp-yt-paper-input/tp-yt-paper-input-container/div[2]/div/iron-input/input
    sleep                       4s
    click element               xpath=//*[@id="contentWrapper"]/div/tp-yt-paper-listbox/tp-yt-paper-item[2]
    sleep                       4s
And User click save button
    click element               xpath=//*[@id="general-pane"]/div[2]/tp-yt-paper-button[2]
    sleep                       3s
Then make sure playlist created
    element text should be      xpath=//*[@id="header"]/ytmusic-editable-playlist-detail-header-renderer/ytmusic-detail-header-renderer/div/div[2]/h2                               ${TITLE}
