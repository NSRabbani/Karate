Feature: get jira user details with basic auth 

Scenario: Jira basic auth 
	Given url 'https://trecking.atlassian.net/rest/api/3/user?accountId=61e1b2a6326554006c8c2d8a' 
	When header Authorization = call read('basic-auth.js') { username: 'rabbanisherif@gmail.com', password: 'ATATT3xFfGF0Frsb4Odjk3qzI0Cqe8B1_-rDmvpe_ZzFwOd27PKwRAfZlhI8vpQg2AVJ363TUe8BnC_WxqOnRv9LWP36sJ1vATmhcRu_3dOdTiWR8uMVHOcSCbGgZI131NPK9Ve_wsFcbtpnXmvf8jjmzH8yTIOkavN0g4GPZZE7RkHJI6jXa2g=5C3C45A3' } 
	Then method get 
	And status 200 
	And print 'abc---------', abc
	
#	
#Scenario: Jira basic auth post 
#	Given url 'https://trecking.atlassian.net/rest/api/3/user?accountId=61e1b2a6326554006c8c2d8a' 
#	And header Authorization = call read('basic-auth.js') { username: 'rabbanisherif@gmail.com', password: 'ATATT3xFfGF0Frsb4Odjk3qzI0Cqe8B1_-rDmvpe_ZzFwOd27PKwRAfZlhI8vpQg2AVJ363TUe8BnC_WxqOnRv9LWP36sJ1vATmhcRu_3dOdTiWR8uMVHOcSCbGgZI131NPK9Ve_wsFcbtpnXmvf8jjmzH8yTIOkavN0g4GPZZE7RkHJI6jXa2g=5C3C45A3' } 
#	When request { 	"emailAddress": "post@atlassian.com", "products":[] } 
#	Then  method post 
#	And print response 
#	And  status 201 
#	
#Scenario: get all users 
#	Given url 'https://trecking.atlassian.net/rest/api/3/user/bulk' 
#	When header Authorization = call read('basic-auth.js') { username: 'rabbanisherif@gmail.com', password: 'ATATT3xFfGF0Frsb4Odjk3qzI0Cqe8B1_-rDmvpe_ZzFwOd27PKwRAfZlhI8vpQg2AVJ363TUe8BnC_WxqOnRv9LWP36sJ1vATmhcRu_3dOdTiWR8uMVHOcSCbGgZI131NPK9Ve_wsFcbtpnXmvf8jjmzH8yTIOkavN0g4GPZZE7RkHJI6jXa2g=5C3C45A3' } 
#	Then method get 
#	And status 200 
#	
#Scenario Outline: from csv file
#	Given url 'https://trecking.atlassian.net/rest/api/3/user?accountId=61e1b2a6326554006c8c2d8a' 
#	And header Authorization = call read('basic-auth.js') { username: 'rabbanisherif@gmail.com', password: 'ATATT3xFfGF0Frsb4Odjk3qzI0Cqe8B1_-rDmvpe_ZzFwOd27PKwRAfZlhI8vpQg2AVJ363TUe8BnC_WxqOnRv9LWP36sJ1vATmhcRu_3dOdTiWR8uMVHOcSCbGgZI131NPK9Ve_wsFcbtpnXmvf8jjmzH8yTIOkavN0g4GPZZE7RkHJI6jXa2g=5C3C45A3' } 
#	When request { 	"emailAddress": <emailAddress>, "products":[]} 
#	Then method post 
#	And print response 
#	And status 201
#	
#	
#	Examples:
#	|read('data.csv')|
	
	