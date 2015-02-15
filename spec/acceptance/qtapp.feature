Feature: Object#qtapp
  Scenario: Call qtapp within methods chain
    Given I have the following code:
    """
    (1..5).qtapp.select(&:odd?).qtapp.inject(&:+)
    """

    When Ruby it
    Then I should see:
    """
    1..5
    [1, 3, 5]
    """
