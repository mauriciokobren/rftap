*** Settings ***
Resource  ../resources/common.robot
Resource  ..//pages/google_search_page.robot

Test Setup  Begin Web Test  
Test Teardown  End Web Test

*** Variables ***


*** Test Cases ***
Test google search with at least one valid result
    [Documentation]  You can use [Documentation] tag to add details about the test
    [Tags]  Nominal  Google Search  Positive test
    google_search_page.Load
    google_search_page.Search by  ${test_search_key}
    google_search_page.Check result on page  ${test_expected_result}
    
Test google search with at least one valid result using BDD
    [Tags]  BDD  Google Search  Positive test
    Given google_search_page.Is loaded
    When google_search_page.Search by  ${test_search_key}
    Then google_search_page.Check result on page  ${test_expected_result}

Test google search with no expected result using BDD
    [Tags]  BDD  Google Search  Negative test
    Given google_search_page.Is loaded
    When google_search_page.Search by  ${test_wrong_search_key}
    Then google_search_page.Has no result  ${test_wrong_search_key}

Test google search with no expected result
    [Tags]  Nominal  Google Search  Negative test
    google_search_page.Load
    google_search_page.Search by  ${test_wrong_search_key}
    google_search_page.Has no result  ${test_wrong_search_key}
  