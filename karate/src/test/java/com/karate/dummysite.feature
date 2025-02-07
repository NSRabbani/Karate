Feature: Example API Test

Background:

* url 'https://reqres.in/'
* header Accept = 'application/json'


  Scenario: Get employee details
    * path '/api/users'
    * param page = 2
    * method get
    * status 200
    * print response
    * print responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies
    
     Scenario: Get employee details with assersions
    * path '/api/users'
    * param page = 2
    * method get
    * status 200
    * print response
    * print responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies
    * def otherResponse = call read ('FirstTest.feature')