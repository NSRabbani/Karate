Feature: Put demo 

Scenario: Put api demo 

	* url 'https://reqres.in/api/users/2'
* request {"name": "morpheus","job": "zion resident"}
* method put
* status 200