*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/Variables.robot

*** Keywords ***
Open Web Browser
    Open Browser    ${URL}    ${browser}
    Wait Until Page Contains    Welcome to Kru P' Beam! 👋🏻    0.5s
    Maximize Browser Window
    Input Login Data

Input Login Data
    Input Text    ${locator_email}    user.test@krupbeam.com
    Input Text    ${locator_password}    123456789
    Click Element    ${locator_login_btn}
    Wait Until Page Contains    Search Filters    1s

Click Search Button
    [Arguments]    ${locator}
    Click Element    ${locator_search_btn}
    Wait Until Element Is Visible    ${locator}    0.5s

Compare Text for Verify Matching
    [Arguments]    ${locator}    ${msg}=${EMPTY}
    ${txt}=    Get Text    ${locator}
    Should Be Equal As Strings   ${txt}    ${msg}

Verify Notification Button
    Click Element    ${locator_noti}
    Element Should Contain    ${locator_noti_txt}    Notifications
    Element Should Be Visible    ${locator_noti_row1}
    Element Should Be Visible    ${locator_noti_readbtn}
    Click Element    ${locator_noti_readbtn}
    Wait Until Element Is Not Visible    ${locator_noti_readbtn}
    
Verify Profile Button
    Click Element    ${locator_profile}
    Element Should Contain    ${locator_profile_inf}    User Test
    Wait Until Element Is Visible    ${locator_logout}
    Click Element    ${locator_logout}
    Page Should Contain    Welcome to Kru P' Beam! 👋🏻


Empty Data for Search Filters
    Click Element    ${locator_search_btn}
    Element Should Be Visible    ${locator_field_name}
    Element Should Be Enabled    ${locator_field_email}
    Element Should Be Visible    ${locator_field_role}
    Element Should Be Visible    ${locator_field_plan}
    Element Should Be Visible    ${locator_field_status}

Data For Searche Filter Validation
    [Arguments]    ${role}    ${plan}    ${status}    ${rolefield}    ${planfield}    ${statusfield}    
    Open Web Browser
    Data For Searche Filter - Role    ${role}
    Data For Searche Filter - Plan    ${plan}
    Data For Searche Filter - Status    ${status}
    Click Element    ${locator_search_btn}         
    Verify Role Field    ${rolefield}
    Verify Plan Field    ${planfield}
    Verify Status Field    ${statusfield}   
    Close Browser


Data For Search Filter Invalidation
    [Arguments]    ${role}    ${plan}    ${status}    ${rolefield}    ${planfield}    ${statusfield}    
    Open Web Browser
    Data For Searche Filter - Role    ${role}
    Data For Searche Filter - Plan    ${plan}
    Data For Searche Filter - Status    ${status}
    Click Element    ${locator_search_btn}      
    Element Should Be Visible    ${locator_norows}
    Close Browser
    

Data For Searche Filter - Role
    [Arguments]    ${role}
    IF  ${role} == 1
        Click Element    ${locator_role}
        Wait Until Element Is Visible    ${locator_role_admin}    0.5s
        Click Element    ${locator_role_admin}
    ELSE IF    ${role} == 2
        Click Element    ${locator_role}
        Wait Until Element Is Visible    ${locator_role_author}    0.5s
        Click Element    ${locator_role_author}
    ELSE IF    ${role} == 3
        Click Element    ${locator_role}
        Wait Until Element Is Visible    ${locator_role_editor}    0.5s
        Click Element    ${locator_role_editor}
    ELSE IF    ${role} == 4
        Click Element    ${locator_role}
        Wait Until Element Is Visible    ${locator_role_maintainer}    0.5s
        Click Element    ${locator_role_maintainer}
    ELSE IF    ${role} == 5
        Click Element    ${locator_role}
        Wait Until Element Is Visible    ${locator_role_subscriber}    0.5s
        Click Element    ${locator_role_subscriber}
    END

Data For Searche Filter - Plan
    [Arguments]    ${plan}
    IF  ${plan} == 1
        Click Element    ${locator_plan}
        Wait Until Element Is Visible    ${locator_plan_basic}    0.5s
        Click Element    ${locator_plan_basic}
    ELSE IF    ${plan} == 2
        Click Element    ${locator_plan}
        Wait Until Element Is Visible    ${locator_plan_company}    0.5s
        Click Element    ${locator_plan_company}
    ELSE IF    ${plan} == 3
        Click Element    ${locator_plan}
        Wait Until Element Is Visible    ${locator_plan_enterprise}    0.5s
        Click Element    ${locator_plan_enterprise}
    ELSE IF    ${plan} == 4
        Click Element    ${locator_plan}
        Wait Until Element Is Visible    ${locator_plan_team}    0.5s
        Click Element    ${locator_plan_team}
    END

Data For Searche Filter - Status
    [Arguments]    ${status}
    IF  ${status} == 1
        Click Element    ${locator_status}
        Wait Until Element Is Visible    ${locator_status_pending}    0.5s
        Click Element    ${locator_status_pending}
    ELSE IF    ${status} == 2
        Click Element    ${locator_status}
        Wait Until Element Is Visible    ${locator_status_active}    0.5s
        Click Element    ${locator_status_active}
    ELSE IF    ${status} == 3
        Click Element    ${locator_status}
        Wait Until Element Is Visible    ${locator_status_inactive}    0.5s
        Click Element    ${locator_status_inactive}   
    END

Verify Role Field
    [Arguments]    ${rolefield}    
    IF  ${rolefield} == 1  
        Compare Text for Verify Matching    ${locator_field_role}    ${role_admin}            
    ELSE IF    ${rolefield} == 2
        Compare Text for Verify Matching    ${locator_field_role}    ${role_author}    
    ELSE IF    ${rolefield} == 3
        Compare Text for Verify Matching    ${locator_field_role}    ${role_editor}    
    ELSE IF    ${rolefield} == 4
        Compare Text for Verify Matching    ${locator_field_role}    ${role_maintainer}   
    ELSE IF    ${rolefield} == 5
        Compare Text for Verify Matching    ${locator_field_role}    ${role_subscriber}    
    END    

        
    
Verify Plan Field
    [Arguments]    ${planfield}
    IF  ${planfield} == 1 
        Compare Text for Verify Matching     ${locator_field_plan}    ${plan_basic}
    ELSE IF    ${planfield} == 2
        Compare Text for Verify Matching     ${locator_field_plan}    ${plan_company}    
    ELSE IF    ${planfield} == 3
        Compare Text for Verify Matching     ${locator_field_plan}    ${plan_enterprise}    
    ELSE IF    ${planfield} == 4
        Compare Text for Verify Matching     ${locator_field_plan}    ${plan_team}    
    END

Verify Status Field
    [Arguments]    ${statusfield}
    IF  ${statusfield} == 1
        Compare Text for Verify Matching    ${locator_field_status}    ${status_pending}   
    ELSE IF    ${statusfield} == 2
        Compare Text for Verify Matching    ${locator_field_status}    ${status_active}   
    ELSE IF    ${statusfield} == 3
        Compare Text for Verify Matching    ${locator_field_status}    ${status_inactive}    
    END
    
Clear Data in Search Filter
    [Arguments]    ${role}    ${plan}    ${status}
    Open Web Browser
    Data For Searche Filter - Role    ${role}
    Data For Searche Filter - Plan    ${plan}
    Data For Searche Filter - Status    ${status}
    Click Element    ${locator_search_btn}
    Wait Until Element Is Visible    ${locator_field_name}    1s
    Click Element    ${locator_clear_btn}
    Element Should Be Visible    ${locator_norows}
    Close Browser

Sorting User Field - ASC
    [Arguments]    ${locator_sorting_btn}    ${1strow}    ${msg}
    Open Web Browser
    Click Search Button    ${1strow}
    Click Element    ${locator_sorting_btn}
    Element Should Contain    ${1strow}    ${msg}
    Close Browser
    
Sorting User Field - DESC
    [Arguments]    ${locator_sorting_btn}    ${1strow}    ${1stmsg}    ${2ndmsg}
    Open Web Browser
    Click Search Button    ${1strow}
    Click Element    ${locator_sorting_btn}
    Wait Until Element Contains    ${1strow}    ${1stmsg}    0.5s
    Click Element    ${locator_sorting_btn}
    Element Should Contain    ${1strow}    ${2ndmsg}
    Close Browser

Varify Rows per Page Dropdown
    [Arguments]    ${expected_row}    ${row_result}    ${rowid1}    ${rowid2}    ${rowid3}
    Open Web Browser
    Click Element    ${locator_search_btn}
    Wait Until Element Is Visible    ${locator_sort_user_1st}    0.5s
    Wait Until Element Is Visible    ${locator_row}    0.5s
    Select Expected Row    ${expected_row}
    Compare Text for Verify Matching    ${locator_rowresult}    ${row_result}   
    Element Should Be Visible    ${rowid1}
    Element Should Be Visible    ${rowid2}
    Element Should Be Visible    ${rowid3}
    Close Browser

Select Expected Row
    [Arguments]    ${expected_row}
    Click Element    ${locator_row}
    Wait Until Element Is Visible    ${locator_row10}    0.5s
    IF    ${expected_row} == 10
        Click Element    ${locator_row10}
    ELSE IF    ${expected_row} == 25
        Click Element    ${locator_row25}
    ELSE IF    ${expected_row} == 50
        Click Element    ${locator_row50}
    END
    

Change Page Button - Next
    [Arguments]    ${name_next}    ${row_result_next}
    Click Element    ${locator_nxtpage_btn}
    Wait Until Element Is Visible    ${locator_row_id1}    0.5s
    Compare Text for Verify Matching    ${locator_rowresult}    ${row_result_next}  
    Compare Text for Verify Matching    ${locator_sort_user_1st}    ${name_next}
    
Change Page Button - Previous
    [Arguments]    ${name_back}    ${row_result_back}
    Click Element    ${locator_bckpage_btn}
    Wait Until Element Is Visible    ${locator_row_id1}    0.5s
    Compare Text for Verify Matching    ${locator_rowresult}    ${row_result_back}
    Compare Text for Verify Matching    ${locator_sort_user_1st}    ${name_back}        
    
Add User Button
    Click Element    ${locator_adduser_btn}
    Wait Until Page Contains    Kru P' Beam
    # Element Should Be Visible    @{locator_user_fn}    

Add User Page - Back Button
    Click Element    ${locator_adduser_backbtn}
    Wait Until Page Contains    Search Filters    0.5s

Add New User
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${course}    ${nationality}    ${role}    ${plan}
    Input Validation Data For Add User    ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${course}    ${nationality}    ${role}    ${plan}
    Click Element    ${locator_user_signup}
    Wait Until Element Is Visible    ${locator_user_ok_btn}    0.5s
    Click Element    ${locator_user_ok_btn}
    Page Should Contain    Search Filters

Input Validation Data For Add User
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${course}    ${nationality}    ${role}    ${plan}
    Input Text    ${locator_user_fn}    ${firstname}
    Input Text    ${locator_user_ln}    ${lastname}
    Input Text    ${locator_user_email}    ${email}
    Input Text    ${locator_user_pw}    ${password}
    Input Text    ${locator_user_mobile}    ${mobile}
    Select Radio Button    ${locator_user_gender}    ${gender}
    Select Course    ${course}
    Select Nationality    ${nationality}
    Select Role    ${role}
    Select Plan    ${plan}
    

Input Invalidation Data For Add User
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${password}    ${mobile}    ${gender}    ${course}    ${nationality}    ${role}    ${plan}    ${locator}    ${msg}
    Open Web Browser
    Add User Button
    Input Text    ${locator_user_fn}    ${firstname}
    Input Text    ${locator_user_ln}    ${lastname}
    Input Text    ${locator_user_email}    ${email}
    Input Text    ${locator_user_pw}    ${password}
    Input Text    ${locator_user_mobile}    ${mobile}

    IF  '${gender}' != '0'
        Select Radio Button    ${locator_user_gender}    ${gender}
    END

    Select Course    ${course}

    IF  '${nationality}' != 'Thai'
        Select Nationality    ${nationality}
    END
    
    Scroll Element Into View    ${locator_user_role}
    Select Role    ${role}
    Scroll Element Into View    ${locator_plan}
    Select Plan    ${plan}
    Scroll Element Into View    ${locator_user_signup}
    Click Element    ${locator_user_signup}
    Compare Text for Verify Matching    ${locator}    ${msg}
    Close Browser

Varify New User
    [Arguments]     ${locator_sorting_btn}    ${1strow}    ${msg}    ${expected_row}    ${locator_name}    ${name}
    Click Element    ${locator_sorting_btn}
    Element Should Contain    ${1strow}    ${msg}
    Scroll Element Into View    ${locator_row}
    Select Expected Row    ${expected_row}
    Compare Text for Verify Matching    ${locator_name}    ${name}

Input Invalidation Format for Email Field
    FOR  ${email}  IN  tmgmail.com    ไทย    0988889888
        Input Text    ${locator_user_email}    ${email}
        Click Element    ${locator_user_signup}
        Compare Text for Verify Matching    ${locator_error_email}    Invalid email address
    END

Select Course
    [Arguments]    ${course}
    IF  ${course} == 1
        Select Checkbox    ${locator_course_sql}
    ELSE IF    ${course} == 2
        Select Checkbox    ${locator_course_manual}
    ELSE IF    ${course} == 3
        Select Checkbox    ${locator_course_auto}
    ELSE IF    ${course} == 4
        Select Checkbox    ${locator_course_auto2}
    ELSE IF    ${course} == 5
        Select Checkbox    ${locator_course_sql}
        Select Checkbox    ${locator_course_manual}
    ELSE IF    ${course} == 6
        Select Checkbox    ${locator_course_sql}
        Select Checkbox    ${locator_course_manual}
        Select Checkbox    ${locator_course_auto}
    ELSE IF    ${course} == 7
        Select Checkbox    ${locator_course_sql}
        Select Checkbox    ${locator_course_manual}
        Select Checkbox    ${locator_course_auto}
        Select Checkbox    ${locator_course_auto2}        
    END
    
Select Nationality
    [Arguments]    ${nationality}
    IF  ${nationality} != 0
        Click Element    ${locator_user_national}
        Wait Until Element Is Visible    ${user_national_thai}    0.5s
        Click Element    ${user_national_thai}
    END
    
Select Role
    [Arguments]    ${role}
    IF  ${role} == 1
        Click Element    ${locator_user_role}
        Wait Until Element Is Visible    ${user_role_admin}    0.5s
        Click Element    ${user_role_admin}
    ELSE IF    ${role} == 2
        Click Element    ${locator_user_role}
        Wait Until Element Is Visible    ${user_role_admin}    0.5s
        Click Element    ${user_role_author}
    ELSE IF    ${role} == 3
        Click Element    ${locator_user_role}
        Wait Until Element Is Visible    ${user_role_admin}    0.5s
        Click Element    ${user_role_editor}
    ELSE IF    ${role} == 4
        Click Element    ${locator_user_role}
        Wait Until Element Is Visible    ${user_role_admin}    0.5s
        Click Element    ${user_role_maintainer}
    ELSE IF    ${role} == 5
        Click Element    ${locator_user_role}
        Wait Until Element Is Visible    ${user_role_admin}    0.5s
        Click Element    ${user_role_subscriber}
    END

Select Plan
    [Arguments]    ${plan} 
    IF  ${plan} == 1
        Click Element    ${locator_user_plan}
        Wait Until Element Is Visible    ${user_plan_basic}   
        Click Element    ${user_plan_basic}
    ELSE IF    ${plan} == 2
        Click Element    ${locator_user_plan}
        Wait Until Element Is Visible    ${user_plan_basic}   
        Click Element    ${user_plan_company}
    ELSE IF    ${plan} == 3
        Click Element    ${locator_user_plan}
        Wait Until Element Is Visible    ${user_plan_basic}   
        Click Element    ${user_plan_enterprise}
    ELSE IF    ${plan} == 4
        Click Element    ${locator_user_plan}
        Wait Until Element Is Visible    ${user_plan_basic}   
        Click Element    ${user_plan_team}
    END
    






   




