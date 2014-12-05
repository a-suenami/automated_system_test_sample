Feature: Todo list

  Scenario: Display todo list page
    When open "Todo list" page
    Then display "Listing todos"

  Scenario: Register new todo
    When open "Todo list" page
    And click "New Todo" link
    And fill in "Content" with "This is new todo."
    And select "work" from "Category" radio buttons
    And select "high" from "Priority" select box
    And check "guest, meeting" from "Tags" check boxes
    And check "Alert"
    And click "Create Todo" button
    Then display "Todo was successfully created."
    And display "This is new todo."
    When click "Back" link
    Then display "This is new todo."
