require_relative '../unit/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  before(:example) do
    @sa = StringAnalyzer.new
  end
  after(:example) do
    puts "Hook After "
  end

  context "With valid input" do
    puts "First Example running"
    it "should detect when a string contains vowels" do
      expect(@sa.has_vowels? ('iii')).to be true
    end

    #ISOLATED  Example
    context "should detect when a string doesn't contain vowels" do
      puts "Second Example running"
      it {expect(@sa.has_vowels?('bcdfg')).to be false}

      puts "Third Example running"
      it {expect(@sa.has_vowels?('')).to be false}
    end
  end
end