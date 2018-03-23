require_relative '../unit/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  around(:example) do |ex|
    @sa = StringAnalyzer.new
    ex.run
    p_wrote "Hook After "
  end

  context "With valid input" do
    p_msg "First Example running"
    it "should detect when a string contains vowels" do
      expect(@sa.has_vowels? ('iii')).to be true
    end

    #ISOLATED  Example
    context "should detect when a string doesn't contain vowels" do
      p_msg "Second Example running"
      it {expect(@sa.has_vowels?('bcdfg')).to be false}

      p_msg "Third Example running"
      it {expect(@sa.has_vowels?('')).to be false}
    end
  end
end