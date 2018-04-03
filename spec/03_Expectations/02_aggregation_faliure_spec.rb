require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  before(:example) do
    @sa = StringAnalyzer.new
  end

    it "should detect when a string contains vowels" do
      aggregate_failures "Testing Volws response" do
        expect(@sa.contain_vowels? ('iii')).to be false
        expect(@sa.contain_vowels?('bcdfg')).to be true
        expect(@sa.contain_vowels?('')).to be true
      end
    end

  it "should detect when a string contains vowels", :aggregate_failures do
    expect(@sa.contain_vowels? ('iii')).to be true
    expect(@sa.contain_vowels? ('bcfg')).to be true
    expect(@sa.contain_vowels?('')).to be true
  end
end