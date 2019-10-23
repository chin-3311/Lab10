*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    google
${BROWSER}    Chrome
${WELCOME URL}    https://www.google.co.th
${DELAY}    0
${URL}   www.cs.kku.ac.th


*** Test Cases ***
Open Welcome Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    SetSelenium Speed    ${DELAY}


Input Search
    Input Text     q    www.cs.kku.ac.th
    Submit Form    tsf
	Wait Until Page Contains    www.cs.kku.ac.th
	[Teardown]    Close Browser