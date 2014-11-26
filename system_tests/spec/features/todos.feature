Feature: Todo list

  Scenario: Display todo list page
    When open "Todo list" page
    Then display "Listing todos"

  Scenario: Register new todo
    When open "Todo list" page
    And click "New Todo" link
    And fill in "Content" with "This is new todo."
    And click "Create Todo" button
    Then display "Todo was successfully created."
    And display "This is new todo."
    When click "Back" link
    Then display "This is new todo."
