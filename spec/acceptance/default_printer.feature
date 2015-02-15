Feature: config.default_printer
  Scenario: set config.default_printer to :awesome_print and call qtapp
    Given I have the following code:
    """
    Qtapp.config.default_printer = :awesome_print

    'hoge'.qtapp
    """

    When Ruby it
    Then I should see:
    """
    "hoge"
    """
