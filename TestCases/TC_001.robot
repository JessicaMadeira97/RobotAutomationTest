*** Settings ***
Library  SeleniumLibrary
Resource  C://Users/rebecca.madeira/PycharmProjects/TestingFacebook/Resources/UserKeywords.robot

*** Variables ***
${URL}  https://thetestingworld.com

*** Test Cases ***
TC_001_Login_Logout
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Click Element  xpath://a[text()='Login']
    ${rows}=  Read Number of Rows  Folha1

    FOR  ${i}  IN RANGE  1  ${rows}+1
      ${username}=  Read Excel Data of Cell  Folha1  ${i}  1
      ${password}=  Read Excel Data of Cell  Folha1  ${i}  2
       Input Text  id:username  ${username}
       Input Text  id:password  ${password}
       Click Button  xpath://button[@type='submit']
       Sleep  5s
    END