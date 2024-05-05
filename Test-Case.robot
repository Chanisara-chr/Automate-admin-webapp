*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot
Resource    ${CURDIR}/Keyword.robot
Suite Setup    Set Selenium Speed    0.2s
Suite Teardown    Close All Browsers
Test Setup    Open Web Browser
Test Teardown    Close Browser


*** Test Cases ***

TC001-Verify Notification Button
    Verify Notification Button

TC002-Profile Field
    Verify Profile Button

TC005-Empty Data For Search Filter
    Empty Data for Search Filters

TC006-Data for Searche Filter Validation
    [Setup]
    [Template]    Data For Searche Filter Validation
    1    0    0    1    0    0
    0    1    0    0    1    0
    0    0    1    0    0    1
    2    3    0    2    3    0
    0    2    2    0    2    2
    4    0    3    4    0    3
    5    1    3    5    1    3
    [Teardown]
    
TC007-Data for Search Filter Invalidation
    [Setup]
    [Template]  Data For Search Filter Invalidation   
    3    3    1    3    3    1
    2    2    1    2    2    1
    [Teardown]

TC008-Clear Data Button
    [Setup]
    [Template]    Clear Data in Search Filter
    0    0    0
    1    0    0
    0    1    0
    0    0    1
    1    1    0
    0    1    1
    1    0    1
    5    1    3
    [Teardown]

TC009-Sort User Field Asc
    [Setup]
    [Template]    Sorting User Field - ASC
    ${locator_sort_user}    ${locator_sort_user_1st}    Adeline Micco
    ${locator_sort_email}    ${locator_sort_email_1st}    admin@krupbeam.com
    ${locator_sort_role}    ${locator_sort_role_1st}    ${role_admin}
    ${locator_sort_plan}    ${locator_sort_plan_1st}    ${plan_basic}
    ${locator_sort_status}    ${locator_sort_status_1st}    ${status_active}
    [Teardown]

TC010-Sort User Field DESC
    [Setup]
    [Template]    Sorting User Field - DESC
    ${locator_sort_user}    ${locator_sort_user_1st}    Adeline Micco    Zsazsa McCleverty
    ${locator_sort_email}    ${locator_sort_email_1st}    admin@krupbeam.com    zmcclevertye@krupbeam.com
    ${locator_sort_role}    ${locator_sort_role_1st}    ${role_admin}    ${role_subscriber}
    ${locator_sort_plan}    ${locator_sort_plan_1st}    ${plan_basic}    ${plan_team}
    ${locator_sort_status}    ${locator_sort_status_1st}    ${status_active}    ${status_pending}
    [Teardown]

TC011-Varify Row Per Page
    [Setup]
    [Template]    Varify Rows per Page Dropdown
    10  1–10 of 53    ${locator_row_id1}    ${locator_row_id5}    ${locator_row_id10}
    25    1–25 of 53    ${locator_row_id1}    ${locator_row_id17}    ${locator_row_id25}
    50    1–50 of 53    ${locator_row_id1}    ${locator_row_id37}    ${locator_row_id50}
    [Teardown]

TC012-Verify Change Page Button
    Click Element    ${locator_search_btn}
    Wait Until Element Is Visible    ${locator_nxtpage_btn}
    Change Page Button - Next    Jonah Wharlton    11–20 of 53
    Change Page Button - Previous    Galen Slixby    1–10 of 53

TC013-Add User Button and Back Button
    Add User Button
    Add User Page - Back Button

TC014-Verify Input Validation Data for Add New User
    Add User Button
    Add New User   Chanisara    Ruyuenyong    tm.chr@gmail.com    1234567890    0898888888    female    3    1    3    1
    Varify New User    ${locator_sort_user}    ${locator_sort_user_1st}    Adeline Micco    50    ${locator_row_name_id11}    Chanisara Ruyuenyong

TC015-Verify Hyperlink Reset in New User Page
    Add User Button
    Input Validation Data For Add User    Chanisara    Ruyuenyong    tm.chr@gmail.com    1234567890    0898888888    female    3    1    3    1
    Scroll Element Into View    ${locator_user_reset}
    Click Element    ${locator_user_reset}
    Click Element    ${locator_user_signup}
    Compare Text for Verify Matching    ${locator_error_firstname}    This field is required

TC016-Verify Input Invalidation Data for New User
    [Setup]
    [Template]    Input Invalidation Data For Add User
    ${EMPTY}    chr         tm@gmail.com    1234567890    0898788788    female    1    1    1    1    ${locator_error_firstname}    This field is required
    tm          ${EMPTY}    tm@gmail.com    1234567890    0898788788    female    1    1    1    1    ${locator_error_lastname}     This field is required
    tm          chr         ${EMPTY}        1234567890    0898788788    female    1    1    1    1    ${locator_error_email}        This field is required
    tm          chr         tm@gmail.com    ${EMPTY}      0898788788    female    1    1    1    1    ${locator_error_password}     This field is required
    tm          chr         tm@gmail.com    1234567890    ${EMPTY}      female    1    1    1    1    ${locator_error_mobile}       This field is required
    tm          chr         tm@gmail.com    1234567890    0898788788    0         1    1    1    1    ${locator_error_gender}       This field is required
    tm          chr         tm@gmail.com    1234567890    0898788788    female    0    1    1    1    ${locator_error_course}       This field is required
    tm          chr         tm@gmail.com    1234567890    0898788788    female    1    0    1    1    ${locator_error_nationality}    This field is required
    tm          chr         tm@gmail.com    1234567890    0898788788    female    1    1    0    1    ${locator_error_role}         This field is required
    tm          chr         tm@gmail.com    1234567890    0898788788    female    1    1    1    0    ${locator_error_plan}         This field is required
    [Teardown]

TC017-Verify Invalid Email Formats Are Rejected
    Add User Button
    Input Invalidation Format for Email Field

