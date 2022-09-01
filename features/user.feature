Feature: Handle storing, retrieving and deleting customer details # test/features/user.feature:1

  Scenario: Retrieve a customers details
    Given some users are in the system
    When I retrieve the customer 'jasonb'
    Then I should get a '200' response
    And the following user details are returned:
      | name        |
      | Jason Bourne | 

  Scenario: Add a new user
    Given the user "freddy" doesnt exist
    When I store the costumer "freddy"
    Then I should get a '201' response
    And "freddy" is in the database

