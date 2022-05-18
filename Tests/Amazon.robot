*** Settings ***
Documentation  This is basic info about whole suite
Resource  Resources/Common.robot
Resource  Resources/Amazon.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Logged out user can search for products

  [Documentation]   This is some info
  [Tags]  Smoke
  OPEN BROWSER  http://www.amazon.com  chrome
  wait until page contains  Today's Deals
  input text  id=twotabsearchtextbox  Ferrari 458
  click button  id=nav-search-submit-button
  wait until page contains  results for "Ferrari 458"
  click link  link:Ferrari Remote Control Cars - 1:24 BEZGAR Officially Licensed RC Series, Electric Sport Racing Toy Car Model Vehicle, 2.4Ghz RC Car for Kids, Adults, Girls and Boys Holiday Ideas Gift (71900 Red)
  sleep  3s
  wait until page contains   Back to results
  click button  id=add-to-cart-button
  wait until page contains  Added to Cart
  click button  xpath=//input[@name='proceedToRetailCheckout']
  wait until page contains   Sign-In


*** Keywords ***
