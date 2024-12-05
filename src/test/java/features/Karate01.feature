Feature: Prueba API con POST

  Background: defino url
    Given url 'https://reqres.in'

 @Post
  Scenario: ejemplo POST simple
    Given path '/api/users'
    And request
      """
      {
        "name":"Winter",
        "job":"QA"
      """
    When method post
    Then status 201
    * print response

  @Post
  Scenario: ejemplo POST 2
    * def body =
      """
      {
        "name":"Diego",
        "job":"QA Automatizador"
      """

    Given path '/api/users'
    And request body
    When method post
    Then status 201
    * print response
