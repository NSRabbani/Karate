Feature: Example API Test

Background:
* def reusable = Java.type ('com.karate.App')
    * print reusable.message()
    * print reusable.sum(10,9)    
* url 'https://dummy.restapiexample.com'
* header Accept = 'application/json'

  Scenario: Get employee details
    * path '/api/v1/employees'
    * method get
    * status 200
    * print response
    * print responseStatus
    * def res = responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies
    * print response.data[1].employee_salary
    * assert response.data[1].employee_salary == 170750
    * match response.data[1].employee_age == 63
    * def reusable = Java.type ('com.karate.App')
   * print reusable.message()
    * print reusable.sum(10,9) 