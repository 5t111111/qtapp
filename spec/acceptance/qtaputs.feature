Feature: Object#qtaputs
  Scenario: Call qtaputs within methods chain
    Given I have the following code:
    """
    (1..5).qtaputs.select(&:odd?).qtaputs.inject(&:+)
    """

    When Ruby it

    Then I should see:
    """
    1..5
    1
    3
    5
    """

  Scenario: Call qtaputs with block
    Given I have the following code:
    """
    (1..5).qtaputs(&:count).select(&:odd?).qtaputs
    """

    When Ruby it

    Then I should see:
    """
    5
    1
    3
    5
    """
