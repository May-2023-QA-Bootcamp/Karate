@get-user
Feature: GET User API validation

  Background: 
    * url baseUrl

	@construct-path-example
  Scenario: Simple Get User API call
  	* def pathUrl = reqresConstant.user.replace('{id}',4)
    Given path pathUrl
    When method GET
    Then status 200
    And match response.data.id == 4
    And match response.support.url == 'https://reqres.in/#support-heading'

  Scenario: Get User API with no path param
    When method GET
    Then status 200
    And match response.page == 1
    And match response.data[3].email contains '@reqres.in'
    And assert response.data.length == 6

  @helper-get-users
  Scenario: Get User API call from Get Users helper method
    * def getUsers = call read('classpath:helper/helper.feature@get-users-helper'){urlPath:#(baseUrl)}
    * def userId = '/' + getUsers.response.data[2].id
    * print 'User ID is : ' + userId
    * def getUser = call read('classpath:helper/helper.feature@get-user-helper'){urlPath:#(baseUrl), pathParam:#(userId)}
    * print getUser.response.support
    
