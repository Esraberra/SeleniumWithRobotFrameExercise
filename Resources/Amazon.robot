*** Settings ***
Library  SeleniumLibrary
Resource  Resources/Page_Object/TopNav.robot
Resource  Resources/Page_Object/Cart.robot
Resource  Resources/Page_Object/Product.robot





*** Keywords ***
Search for Products

  Go To   http://www.amazon.com
  wait until page contains  Today's Deals
  input text  id=twotabsearchtextbox  Ferrari 458
  click button  id=nav-search-submit-button
  wait until page contains  results for "Ferrari 458"
Select Product from Search Results
  click link  link:Ferrari Remote Control Cars - 1:24 BEZGAR Officially Licensed RC Series, Electric Sport Racing Toy Car Model Vehicle, 2.4Ghz RC Car for Kids, Adults, Girls and Boys Holiday Ideas Gift (71900 Red)
  sleep  3s
  wait until page contains   Back to results

Add Product to Cart
  click button  id=add-to-cart-button
  wait until page contains  Added to Cart

Begin Checkout
  click button  xpath=//input[@name='proceedToRetailCheckout']
  wait until page contains   Sign-In

