*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Product Added
  wait until page contains  Added to Cart

Proceed to Checkout

  click button  xpath=//input[@name='proceedToRetailCheckout']