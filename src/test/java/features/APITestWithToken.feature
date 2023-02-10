Feature: API Tests

  Background:
   # * def baseUrl = "https://www.krafttechexlab.com/sw/api/v1/allusers"

    * def AuthFeature = call read('classpath:features/PostNewUser.feature')
    * def userToken = AuthFeature.token
    * print "Token comes from Background", userToken

    Scenario: add experience
      Given url "https://www.krafttechexlab.com/sw/api/v1/experience/add"
      And header Authorization = userToken
      And header Accept = "application/json; charset=UTF-8"
      * request
      """
      {
  "job": "Junior Developer-SDET",
  "company": "Kraft Techex Org_1",
  "location": "Tr",
  "fromdate": "2020-11-11",
  "todate": "2021-10-10",
  "current": "false",
  "description": "Good job"
}
      """

      When method POST
      Then status 200
      * print reponse

      Given url "https://www.krafttechexlab.com/sw/api/v1/experience/all"
      And header Authorization = userToken
      And header Accept = "application/json; charset=UTF-8"
      When method GET
      Then status 200
      * print response

   #   * def expectedINFO = read('classpath:data/userINFO.json')

  #    Then match response == expectedINFO

 # * match response.experience[0].company == ""
  # burada exp. oluşturma değiştirme ve silme yapılabilir