*** Settings ***
Documentation  This is basic info about whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Logged out user can search for products
  [Documentation]  First Test Case
  [Tags]  Smoke

  Amazon.Search for Products


Logged out user can view a product
  [Documentation]  Second  Test Case
  Amazon.Search for Products
  Amazon.Select Product from Search Results

Logged out user can add product to cart
  Amazon.Search for Products
  Amazon.Select Product from Search Results
  Amazon.Add Product to Cart
  Amazon.Begin Checkout

*** Keywords ***
