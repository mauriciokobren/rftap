*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${test_search_key}  Robot Framework
${test_url}  https://www.google.com/
${test_browser}  firefox
${test_expected_result}  robotframework.org
${test_wrong_search_key}  6Io^6jqkUT3l


*** Keywords ***
Begin Web Test
    Set Selenium Implicit Wait  15
    Open Browser  about:blank  ${test_browser}
    Log Many  Test browser is  ${test_browser}
    Set Log Level  DEBUG

End Web Test
    Close Browser
