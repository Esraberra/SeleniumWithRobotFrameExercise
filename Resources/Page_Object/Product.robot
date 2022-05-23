*** Settings ***

Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded

  wait until page contains   Back to results

Add to Cart

  click button  id=add-to-cart-button