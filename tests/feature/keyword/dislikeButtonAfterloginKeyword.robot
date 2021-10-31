*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***

*** Keywords ***
And User go to explore page
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/ytmusic-nav-bar/div[2]/ytmusic-pivot-bar-renderer/ytmusic-pivot-bar-item-renderer[2]/yt-formatted-string
    sleep                       5s
And user click one of the album
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/div[3]/ytmusic-browse-response/ytmusic-section-list-renderer/div[2]/ytmusic-carousel-shelf-renderer[1]/ytmusic-carousel/div/ul/ytmusic-two-row-item-renderer[1]/a/ytmusic-item-thumbnail-overlay-renderer/div
    sleep                       5s
And User click dislike button
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/div[3]/ytmusic-browse-response/ytmusic-section-list-renderer/div[2]/ytmusic-shelf-renderer/div[2]/ytmusic-responsive-list-item-renderer[1]/ytmusic-menu-renderer/div/ytmusic-like-button-renderer/tp-yt-paper-icon-button[1]/tp-yt-iron-icon
Then "Got it, we'll tune your recommendations" pop up appear
    sleep                       2s
    element should be visible   xpath=/html/body/ytmusic-app/ytmusic-popup-container/ytmusic-notification-text-renderer/tp-yt-paper-toast/span
    sleep                       5s

