
  Feature: DemoQA API Test

    Scenario: Get all books list
      Given url "https://bookstore.toolsqa.com/BookStore/v1/Books"
      When method GET
      Then status 200
      * print response
      * match header Content-Type == "application/json; charset=utf-8"
      * match header X-Powered-By == "Express"
      * match header Date == "#present"
      
      Scenario: Json Body verification
        Given url "https://bookstore.toolsqa.com/BookStore/v1/Books"
        When method GET
        Then status 200
        * print response
        * print response.books[0].author
        * def subtitle = response.books[0].subTitle
        * match subtitle == "A Working Introduction"
        * match response.books[0].author == "Richard E. Silverman"