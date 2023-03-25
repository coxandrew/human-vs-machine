# frozen_string_literal: true

class Palindrome
  def self.check(input_string)
    # Convert input string to lowercase and remove non-alphanumeric characters
    sanitized_string = input_string.downcase.gsub(/[^a-z0-9]/i, '')
    # Check if the sanitized string is the same forwards and backwards
    sanitized_string == sanitized_string.reverse
  end
end
