Resource  ../resources/common.robot

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_field_locator}  name=q
${logginbutton_locator}  xpath=/html/body/div[4]/div[2]/div/div[2]/div/div/div[1]/a
${result_locator}  id=res


*** Keywords ***
Load
    Go To  ${test_url}
    Log Many  Loading page ${test_url}

Search by
    [Arguments]  ${search_key}
    Wait Until Element is Visible  ${search_field_locator}
    Log Many  Element is visible  ${search_field_locator}
    
    Input Text  ${search_field_locator}  ${search_key}
    Log Many  Type  ${search_key}  in field  ${search_field_locator}

    Press Keys  ${search_field_locator}  RETURN
    Log Many  Enter pressed in field  ${search_field_locator}

Check result on page
    [Arguments]  ${result}
    Wait Until Page Contains Element  ${logginbutton_locator}
    Page Should Contain  ${result}

Is loaded
    Load
    Page Should Contain Element  ${search_field_locator}

Has no result
    [Arguments]  ${result}
    Element Should Not Contain  ${result_locator}  ${result}