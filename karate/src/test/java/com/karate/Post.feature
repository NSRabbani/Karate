Feature: demo post 


Background: 

	* url 'https://reqres.in/'
* header Accept = 'application/json'
* def expected = read("data.json")
* def responsevariabe = read("response.json")

Scenario: post a new entry 
	* path '/api/users'
    * param page = 2
    * def var = read("data.json")
    * set var.name = 'Junga'
    
* request var
* method POST
* print response
* status 201
* match response == responsevariabe

Scenario: assert the entry 

	* path '/api/users'
    * param page = 2
    * method get
    * status 200
    * print response
   
   Scenario Outline: multiple post
   * path '/api/users'
    * param page = 2
    * def var = {"name": <name>,"job": <job title>} 
    * set var.name = 'Junga'
    
* request var
* method POST
* print response
* status 201
* match response == responsevariabe
   
    Examples:
    |name|job title|
    |emp1|dsd|
    |emp2|ewd|
