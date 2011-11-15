Feature: Authors
  In order to growing authors popularity
  As a user
  I want to be able to manage authors

  Background:
    Given I am on the articles page

  Scenario: Creating author
     When I follow "Authors"
      And I follow "New author"
      And I fill in "Name" with "Mike"
      And I press "Save"
     Then I should see "Author created!"
      And I should see "Mike"

  Scenario: Deleting author
     When I follow "Authors"
      And I follow "New author"
      And I fill in "Name" with "Mike"
      And I press "Save"
     Then I should see "Author created!"
      And I should see "Mike"

     When I follow "Delete"
     Then I should see "Author deleted!"
     Then I should see "Authors"
      And I should not see "Mike"
