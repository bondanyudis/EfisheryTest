*** Settings ***
Library     SeleniumLibrary
Variables   ../../helper/environment.py

*** Variables ***
${TEXT}            Bruno Mars

*** Keywords ***
And User input search data on search bar
    click element               xpath=//*[@id="placeholder"]
    sleep                       5s

And User press Enter Button
    click element               xpath=/html/body/ytmusic-app/ytmusic-app-layout/ytmusic-nav-bar/div[2]/ytmusic-search-box/div/div[1]/input
    input text                  xpath=/html/body/ytmusic-app/ytmusic-app-layout/ytmusic-nav-bar/div[2]/ytmusic-search-box/div/div[1]/input               ${TEXT}
    sleep                       2s
    click element               xpath=//*[@id="suggestion-0"]

Then The page showed list result according to input data
    sleep                       3s
    Element Should Contain      xpath=//*[@id="contents"]/ytmusic-responsive-list-item-renderer[1]/div[2]/div[3]/yt-formatted-string/a[1]           ${TEXT}
    sleep                       3s
