# frozen_string_literal: true

require "rspec"
require "palindrome"

describe Palindrome do
  describe ".valid?" do
    it "returns true for palindromes" do
      expect(Palindrome.valid?("A man, a plan, a canal: Panama")).to be true
      expect(Palindrome.valid?("Was it a car or a cat I saw?")).to be true
      expect(Palindrome.valid?("Madam, in Eden, I'm Adam.")).to be true
      expect(Palindrome.valid?("racecar")).to be true
    end

    it "returns false for non-palindromes" do
      expect(Palindrome.valid?("hello")).to be false
      expect(Palindrome.valid?("world")).to be false
      expect(Palindrome.valid?("ruby")).to be false
    end

    it "ignores non-alphanumeric characters" do
      expect(Palindrome.valid?("A man, a plan, a canal -- Panama")).to be true
      expect(Palindrome.valid?("Mr. Owl ate my metal worm")).to be true
      expect(Palindrome.valid?("Was it a car or a cat I saw?")).to be true
    end
  end
end
