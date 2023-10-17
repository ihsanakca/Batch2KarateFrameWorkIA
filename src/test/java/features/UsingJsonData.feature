Feature: Get user by id

  Scenario: match response with expected

    Given url "https://www.krafttechexlab.com/sw/api/v1/allusers/getbyid/"
    * path '1'
    * header Accept = "application/json; charset=UTF-8"
    * method GET
    Then status 200
    * print response

    * def expectedINFO = read('classpath:data/userINFO.json')

    * match response == expectedINFO