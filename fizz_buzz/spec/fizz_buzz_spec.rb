# frozen_string_literal: true

require "fizz_buzz"

RSpec.describe FizzBuzz do
  it "returns 'Fizz' for multiples of 3" do
    expect(FizzBuzz.new.call(3)).to eq("Fizz")
    expect(FizzBuzz.new.call(6)).to eq("Fizz")
    expect(FizzBuzz.new.call(9)).to eq("Fizz")
  end

  it "returns 'Buzz' for multiples of 5" do
    expect(FizzBuzz.new.call(5)).to eq("Buzz")
    expect(FizzBuzz.new.call(10)).to eq("Buzz")
    expect(FizzBuzz.new.call(20)).to eq("Buzz")
  end

  it "returns 'FizzBuzz' for multiples of 3 and 5" do
    expect(FizzBuzz.new.call(15)).to eq("FizzBuzz")
    expect(FizzBuzz.new.call(30)).to eq("FizzBuzz")
    expect(FizzBuzz.new.call(45)).to eq("FizzBuzz")
  end

  it "returns the number itself for non-multiples of 3 or 5" do
    expect(FizzBuzz.new.call(1)).to eq(1)
    expect(FizzBuzz.new.call(7)).to eq(7)
    expect(FizzBuzz.new.call(11)).to eq(11)
  end
end
