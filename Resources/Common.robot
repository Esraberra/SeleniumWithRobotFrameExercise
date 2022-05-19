*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Keywords ***
Begin Web Test

  OPEN BROWSER  about:blank  chrome

End Web Test
  CLOSE BROWSER
