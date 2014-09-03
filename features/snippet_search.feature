@dashboard
Feature: Snippet Search
  Background:
    Given I sign in as "Mary Jane"
    And I have public "Personal snippet one" snippet
    And I have private "Personal snippet private" snippet
    And I logout
    And I sign in as "John Doe"
    And I visit my snippets page
    And I search for "snippet"
    Then I should see "Personal snippet one" in results
    And I should not see "Personal snippet private" in results
