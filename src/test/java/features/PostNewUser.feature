Feature: Create a new user

  Background:
    * def baseUrl = "https://www.krafttechexlab.com/sw/api/v1/allusers"

    Scenario: Create a new user
      Given url baseUrl
      When path "register"
      And header Accept = "application/json; charset=UTF-8"
      And header Content-Type = "application/json; charset=UTF-8"
      And request
      """
{
  "name": "İhsan Fevkal61",
  "email": "arabaciIhs61@krafttechexlab.com",
  "password": "123467",
  "about": "About Me",
  "terms": "10"
}
      """
      When method POST
      Then status 200
      * print response
      
     # * match response.name == "İhsan Fevkal61"
      * print response.token
      * def token = response.token


