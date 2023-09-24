Feature: Calculator
      Since I don't know how to do math
      I want to use a calculator
      So I can sum two numbers

      Scenario: Two numbers sum
      Given I access the calculator
      When I sum 2 + 2
      Then the result should be 4

      Scenario Outline: Two numbers sum
      Given I access the calculator
      When I sum <firstNumber> + <secondNumber>
      Then the result should be <result>

      Examples:
      | firstNumber | secondNumber | result |
      | 2           | 2            | 4      |
      | 1           | 10           | 11     |
