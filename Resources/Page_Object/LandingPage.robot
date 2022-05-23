*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load

  Go To   http://www.amazon.com

Verify Page Loaded

  wait until page contains  Today's Deals

