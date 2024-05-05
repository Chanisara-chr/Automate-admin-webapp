*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                        https://automate-test.stpb-digital.com/login/
${browser}                    gc
${locator_email}              id=email
${locator_password}           name=password
${locator_login_btn}          id=btn-login
${locator_noti}               xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/button
${locator_noti_txt}           css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li.MuiMenuItem-root.MuiMenuItem-gutters.MuiButtonBase-root.css-8j3j8p
${locator_noti_row1}          css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > div > li:nth-child(1)
${locator_noti_readbtn}       css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li.MuiMenuItem-root.MuiMenuItem-gutters.MuiButtonBase-root.css-1p3ebxb > button
${locator_noti_popover}       css=body > div.MuiModal-root.MuiPopover-root.css-bdbmf5 > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul
${locator_profile}            xpath=//*[@id="__next"]/div[1]/div[2]/header/div/div/div[2]/span/div
${locator_profile_inf}        css=body > div.MuiModal-root.MuiPopover-root.MuiMenu-root.css-hxcdyb > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > div > div > div > p.MuiTypography-root.MuiTypography-body1.css-wisps
${locator_logout}             css=body > div.MuiModal-root.MuiPopover-root.MuiMenu-root.css-hxcdyb > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.MuiMenu-paper.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation8.MuiPopover-paper.css-1u9pw9f > ul > li
${locator_role}               id=select-role
${locator_role_admin}         id=option-select-role-1
${locator_role_author}        id=option-select-role-2
${locator_role_editor}        id=option-select-role-3
${locator_role_maintainer}    id=option-select-role-4
${locator_role_subscriber}    id=option-select-role-5
${role_admin}                 Admin
${role_author}                Author
${role_editor}                Editor
${role_maintainer}            Maintainer
${role_subscriber}            Subscriber
${locator_plan}               id=select-plan
${locator_plan_basic}         id=option-select-plan-1
${locator_plan_company}       id=option-select-plan-2
${locator_plan_enterprise}    id=option-select-plan-3
${locator_plan_team}          id=option-select-plan-4
${plan_basic}                 Basic
${plan_company}               Company
${plan_enterprise}            Enterprise
${plan_team}                  Team
${locator_status}             id=select-status
${locator_status_pending}     id=option-select-status-1
${locator_status_active}      id=option-select-status-2
${locator_status_inactive}    id=option-select-status-3
${status_pending}             Pending
${status_active}              Active
${status_inactive}            Inactive
${locator_clear_btn}          id=btn-clear
${locator_search_btn}         id=btn-search
${locator_sort_user}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[1]/div[1]/div[1]
${locator_sort_user_up}       css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_user_down}     css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_user_1st}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[1]/div/div[2]/a[1]
${locator_sort_email}         xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[2]/div[1]/div[1]
${locator_sort_email_up}      css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_email_down}    css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_email_1st}     xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[2]/p
${locator_sort_role}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[3]/div[1]/div[1]
${locator_sort_role_up}       css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_role_down}     css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_role_1st}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[3]/div/p
${locator_sort_plan}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[4]/div[1]/div[1]
${locator_sort_plan_up}       css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_plan_down}     css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_plan_1st}      xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[4]/h6
${locator_sort_status}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[1]/div/div[5]/div[1]/div[1]
${locator_sort_status_up}     css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_status_down}    css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div.MuiDataGrid-main.css-opb0c2 > div.MuiDataGrid-columnHeaders.css-1atk746 > div > div.MuiDataGrid-columnHeader.MuiDataGrid-columnHeader--sortable.MuiDataGrid-columnHeader--sorted > div.MuiDataGrid-columnHeaderDraggableContainer > div.MuiDataGrid-columnHeaderTitleContainer > div.MuiDataGrid-iconButtonContainer.css-cp5hn7 > button > svg
${locator_sort_status_1st}    xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[5]/div/span
${locator_norows}             xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[3]/div/div
${locator_field_name}         xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[1]
${locator_field_email}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[2]
${locator_field_role}         xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[3]
${locator_field_plan}         xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[4]
${locator_field_status}       xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]/div[5]
${locator_adduser_btn}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[1]/div/a
${locator_adduser_backbtn}    xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[1]/button
${locator_user_fn}            id=firstname
${locator_user_ln}            id=lastname
${locator_user_email}         id=email
${locator_user_pw}            id=password
${locator_user_mobile}        id=mobile-phone
${locator_user_gender}        validation-basic-radio
${locator_course_sql}         name=courses.SQL
${locator_course_manual}      name=courses.Test Manual
${locator_course_auto}        name=courses.Automate Test
${locator_course_auto2}       name=courses.Automate Test2
${locator_user_national}      id=nationality
${user_national_thai}         xpath=//*[@id="menu-"]/div[3]/ul/li[221]
${locator_user_role}          id=select-role
${user_role_admin}            xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${user_role_author}           xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${user_role_editor}           xpath=//*[@id="menu-"]/div[3]/ul/li[3]
${user_role_maintainer}       xpath=//*[@id="menu-"]/div[3]/ul/li[4]
${user_role_subscriber}       xpath=//*[@id="menu-"]/div[3]/ul/li[5]
${locator_user_plan}          id=select-plan
${user_plan_basic}            xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${user_plan_company}          xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${user_plan_enterprise}       xpath=//*[@id="menu-"]/div[3]/ul/li[3]
${user_plan_team}             xpath=//*[@id="menu-"]/div[3]/ul/li[4]
${locator_user_signup}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[3]/div/div/div/form/button
${locator_user_ok_btn}        id=btn-ok
${locator_user_reset}         id=reset
${locator_row}                css=#__next > div.layout-wrapper.css-uinsfl > div.layout-content-wrapper.MuiBox-root.css-34b9xr > main > div > div:nth-child(2) > div > div.MuiDataGrid-root.MuiDataGrid-autoHeight.css-rx2f15 > div:nth-child(3) > div > div.MuiTablePagination-root.css-u1jk8u > div > div.MuiInputBase-root.MuiInputBase-colorPrimary.css-41e7tq
${locator_row10}              xpath=//*[@id="menu-"]/div[3]/ul/li[1]
${locator_row25}              xpath=//*[@id="menu-"]/div[3]/ul/li[2]
${locator_row50}              xpath=//*[@id="menu-"]/div[3]/ul/li[3]
${locator_rowresult}          xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/p[2]
${locator_row_id1}            xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[1]
${locator_row_id5}            xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[5]
${locator_row_id10}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[10]
${locator_row_id17}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[17]
${locator_row_name_id11}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[11]/div[1]/div/div[2]/a[1]
${locator_row_id25}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[25]
${locator_row_id37}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[37]
${locator_row_id50}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[50]
${locator_row_id53}           xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[3]
${locator_nxtpage_btn}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[2]
${locator_bckpage_btn}        xpath=//*[@id="__next"]/div[1]/div[2]/main/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div[3]/button[1]



# Negative Case
${locator_error_firstname}        id=error-firstname
${locator_error_lastname}         id=error-lastname
${locator_error_email}            id=error-email
${locator_error_password}         id=error-password
${locator_error_mobile}           id=error-mobile-phone
${locator_error_gender}           id=validation-basic-gender
${locator_error_course}           id=validation-basic-courses
${locator_error_nationality}      id=validation-basic-nationality
${locator_error_role}             id=validation-role
${locator_error_plan}             id=validation-plan