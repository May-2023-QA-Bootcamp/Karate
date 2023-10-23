@get-user
Feature: GET User API validation

  Background: 
    * url baseUrl

  Scenario: Simple Get User API call
    Given path '/4'
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
