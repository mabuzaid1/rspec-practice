require_relative '../unit/string_analyzer'
require 'spec_helper'

include ColorizingThings


describe StringAnalyzer do
  #Setup
  before(:example) do
    @sa = StringAnalyzer.new
  end

  context "With valid input" do
    it "should detect when a string contains vowels" do
      expect(@sa.has_vowels? ('iii')).to be true
    end

    #ISOLATED  Example
    context "should detect when a string doesn't contain vowels" do
      it {expect(@sa.has_vowels?('bcdfg')).to be false}
      it {expect(@sa.has_vowels?('')).to be false}
    end
  end
end