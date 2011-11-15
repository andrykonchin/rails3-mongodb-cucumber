Feature: Articles
  In order to emulate blog functionality
  As a user
  I want to be able to manage articles

  Background:
    Given an author exists with a name of "Bob"
      And I am on the articles page

  Scenario: Creating article
     When I follow "New article"
      And I fill in "Name" with "New article title"
      And I fill in "Content" with "New article content"
      And I press "Save"
     Then I should see "Article created!"
      And I should see "New article title"
      And I should see "New article content"

     When I am on the articles page
     Then I should see "New article title"

  Scenario: Editing article
     When I follow "New article"
      And I fill in "Name" with "New article title"
      And I fill in "Content" with "New article content"
      And I press "Save"
     Then I should see "Article created!"

     When I follow "Edit"
     Then I should see "Edit article"

     When I fill in "Content" with "Updated article content"
      And I press "Save"
     Then I should see "Article saved!"
      And I should see "Updated article content"

  Scenario: Deleting article
     When I follow "New article"
      And I fill in "Name" with "New article title"
      And I fill in "Content" with "New article content"
      And I press "Save"
     Then I should see "Article created!"

     When I follow "Delete"
     Then I should see "Article deleted"
     Then I should not see "New article title"
