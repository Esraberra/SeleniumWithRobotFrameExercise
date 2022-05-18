*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary
*** Keywords ***
Search for Products
   Enter Search Term
   Submit Search

Enter Search Term
    input text  id=twotabsearchtextbox  Ferrari 458

Submit Search
  CLICK BUTTON   click button  id=nav-search-submit-button