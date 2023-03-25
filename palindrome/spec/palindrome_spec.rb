# frozen_string_literal: true

require "rspec"
require "palindrome"

describe Palindrome do
  describe ".check" do
    it "returns true for palindromes" do
      expect(Palindrome.check("A man, a plan, a canal: Panama")).to be true
      expect(Palindrome.check("Was it a car or a cat I saw?")).to be true
      expect(Palindrome.check("Madam, in Eden, I'm Adam.")).to be true
      expect(Palindrome.check("racecar")).to be true
    end

    it "returns false for non-palindromes" do
      expect(Palindrome.check("hello")).to be false
      expect(Palindrome.check("world")).to be false
      expect(Palindrome.check("ruby")).to be false
    end

    it "ignores non-alphanumeric characters" do
      expect(Palindrome.check("A man, a plan, a canal -- Panama")).to be true
      expect(Palindrome.check("Mr. Owl ate my metal worm")).to be true
      expect(Palindrome.check("Was it a car or a cat I saw?")).to be true
    end
  end
end
