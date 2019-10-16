Feature: Amazon Search

    Scenario: Search for Playstation on Amazon
        Given I am on Amazon
        When I search for Playstation
        And I get the details of a bundle product from the search results
        Then I see that the details match on the product details page
