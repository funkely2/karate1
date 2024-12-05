@get
Feature: Test API

  Scenario: Verify API status
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
