*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Search Completed

  wait until page contains  results for "Ferrari 458"

Click Product Link
  [Documantation]  Clicks on the first product in the search results

  click link  link:Ferrari Remote Control Cars - 1:24 BEZGAR Officially Licensed RC Series, Electric Sport Racing Toy Car Model Vehicle, 2.4Ghz RC Car for Kids, Adults, Girls and Boys Holiday Ideas Gift (71900 Red)
  sleep  3s