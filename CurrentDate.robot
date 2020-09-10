*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  ExcelLibrary
Library  DateTime


*** Test Cases ***
TC_001 Print Current Date

    ${date}=      Get Current Date      UTC      exclude_millis=yes
    ${date}=      Convert Date      ${date}      result_format=%Y-%m-%d

    log to console  DELIVERY_DATE:${date}
    set global variable  ${date}
    
