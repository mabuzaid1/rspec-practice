require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  before(:example) do
    @sa = StringAnalyzer.new
  end

  it "should detect when a string contains vowels" do
    expect(@sa.has_vowels? ('iii')).to be false
    expect(@sa.has_vowels?('bcdfg')).to be true
    expect(@sa.has_vowels?('')).to be true
  end

  it "should detect when a string contains vowels" do
    expect(@sa.has_vowels? ('iii')).should be false
  end

end