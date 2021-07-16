*** Settings ***
Library  ../TestData/ReadData.py

*** Keywords ***
Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxr}=  number_rows  ${sheetname}
    [Return]  ${maxr}

Read Excel Data of Cell
    [Arguments]  ${sheetname}  ${row}  ${col}
    ${cellvalue}=  fetch_cell_data  ${sheetname}  ${row}  ${col}
    [Return]  ${cellvalue}