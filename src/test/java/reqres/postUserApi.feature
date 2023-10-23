@post-user
Feature: POST User API validation

  Background: 
    * url baseUrl
    * header Content-Type = 'application/json'

  Scenario: Simple POST User API call - Hardcoded json
    Given request {"name":"Saiful","job":"QA"}
    When method POST
    Then status 201

  Scenario: POST User with JSON Template
  	* def body = read('classpath:reqres/sampleUser.json')
  	* set body.name = 'Sachin Tendulkar'
  	* set body.job = 'Footballer'
  	Given request body
  	When method POST
  	Then status 201
