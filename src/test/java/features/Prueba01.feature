Feature: Prueba API Users GET
  Background:

    @Get
    Scenario: ejemplo GET Simple
      Given url 'https://reqres.in'
      And path 'api/users/2'
      When method get
      Then status 200

      @Get
      Scenario: ejemplo GET Simple 2 error
        Given url 'https://reqres.in'
        And path 'api','users','2'
        When method get
        Then status 400

  @Get
  Scenario Outline: ejemplo GET con path variable
    Given url 'https://reqres.in'
    And path 'api/users/'+'<id>'
    When method get
    Then status 200
    * print response
    * def correo = response.data.email
    * print correo

    Examples:
    | id |
    | 3  |

  @Get
  Scenario Outline: ejemplo GET con path variable multiples id
    Given url 'https://reqres.in'
    And path 'api/users/'+'<id>'
    When method get
    Then status 200
    * print response

    Examples:
      | id |
      | 3  |
      | 4  |
      | 5  |
      | 6  |