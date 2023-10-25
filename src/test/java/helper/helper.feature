@exclude
Feature: Helper feature

  Background: 
    * url urlPath

	@get-users-helper
  Scenario: Get Users API request
    When method GET
    Then status 200

	@get-user-helper
  Scenario: Get User API request
    Given path pathParam
    When method GET
    Then status 200
