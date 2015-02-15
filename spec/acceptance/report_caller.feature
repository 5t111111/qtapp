Feature: config.report_caller
  Scenario: set config.report_caller to true and call qtapp
    Given a file named "hello.rb" with:
    """
    Qtapp.config.report_caller = true

    class Hello
      def say
        'hello'.qtapp
      end
    end

    Hello.new.say
    """

    When Ruby it
    Then I should see:
    """
    `qtapp' in hello.rb:5:in `say'
    "hello"
    """
