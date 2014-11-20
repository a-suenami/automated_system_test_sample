Feature: Todo list

  Scenario: Display todo list page
    When visit "todo list page"
    Then display "Listing todos"

  Scenario: Register new todo
    When visit "todo list page"
    And click link "New Todo"
    And fill in "Content" with "This is new todo."
    And click button "Create Todo"
    Then display "Todo was successfully created."
    And display "This is new todo."
    When click link "Back"
    Then display "This is new todo."