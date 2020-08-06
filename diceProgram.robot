*** Settings ***
Documentation                   this tests the dice program
Library                         SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  file:///E:/Downloads/Javascript_HTML_CSS/DiceProgram.html

*** Test Cases ***
rolld20NoModifer
    open browser                ${url}  ${browser}
    maximize browser window
    title should be             Dice Program
    input text  id:numberOfDice-d20     1
    sleep   1
    click button    id:button-d20
    sleep   1
    clear element text  id:numberOfDice-d20
    sleep   2
    close browser

rolld20WithModifier
    open browser                ${url}  ${browser}
    maximize browser window
    title should be             Dice Program
    input text  id:numberOfDice-d20     1
    sleep   1
    input text  id:modifier-d20     3
    sleep   1
    click button    id:button-d20
    sleep   1
    clear element text  id:numberOfDice-d20
    sleep   2
    close browser



*** Keywords ***