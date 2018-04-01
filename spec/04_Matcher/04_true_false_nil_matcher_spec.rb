require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  before(:example) do
    @sa = StringAnalyzer.new
  end

  it "True/False/Nil Matchers", :aggregate_failures do
    expect(@sa.has_vowels? 'iii').to be true
    expect(@sa.has_vowels? 'iii').to be_truthy

    expect(@sa.has_vowels? 'cbg').to be false
    expect(@sa.has_vowels? 'cbg').to be_falsey

    expect(@sa.has_vowels? '').to be false
    expect(@sa.has_vowels? '').to be_falsey
  end
end