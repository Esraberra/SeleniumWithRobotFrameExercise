*** Settings ***
Resource  ../Resources/Page_Object/TopNav.robot
Resource  ../Resources/Page_Object/Cart.robot
Resource  ../Resources/Page_Object/Product.robot
Resource  ../Resources/Page_Object/LandingPage.robot
Resource  ../Resources/Page_Object/SearchResults.robot
Resource  ../Resources/Page_Object/SignIn.robot




*** Keywords ***
Search for Products
  LandingPage.Load
  LandingPage.Verify Page Loaded
  TopNav.Search for Products
  SearchResults.Verify Search Completed


Select Product from Search Results
  SearchResults.Click Product Link
  Product.Verify Page Loaded


Add Product to Cart
  Product.Add to Cart
  Cart.Verify Product Added


Begin Checkout
  Cart.Proceed to Checkout
  SignIn.Verify Page Loaded


