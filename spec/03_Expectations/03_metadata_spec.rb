require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  before(:example) do
    @sa = StringAnalyzer.new
  end

  it "should detect when a string contains vowels", :x=> 'u' do |ex|
    expect(@sa.contain_vowels? ex.metadata[:x]).to be true
  end

  it "should detect when a string contains vowels", :aggregate_failures do
    expect(@sa.contain_vowels? ('iii')).to be true
    expect(@sa.contain_vowels? ('bcfg')).to be true
    expect(@sa.contain_vowels?('')).to be true
  end
end