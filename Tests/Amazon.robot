*** Settings ***
Documentation  This is basic info about whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot
#Test Setup  Begin Web Test
#Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
User must sign in to check out
  [Documentation]
  [Tags]  Smoke
  Common.Begin Web Test
  Amazon.Search for Products
  Amazon.Select Product from Search Results
  Amazon.Add Product to Cart
  Amazon.Begin Checkout
  Common.End Web Test



*** Keywords ***
