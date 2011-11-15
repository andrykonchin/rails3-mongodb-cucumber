@javascript
Feature: Comments
  In order to provide comunications with readers
  As a reader
  I want to be able to add comments

  Background:
    Given an author exists with a name of "Bob"
      And I am on the articles page

  Scenario: Creating comment
     When I follow "New article"
      And I fill in "Name" with "New article title"
      And I fill in "Content" with "New article content"
      And I press "Save"
     Then I should see "Article created!"

     When I fill in "Name" with "Comment title"
     And I fill in "Content" with "First comment"
     And I press "Create"
     Then I should see "Comment title" within ".comment"
     And I should see "First comment" within ".comment"
