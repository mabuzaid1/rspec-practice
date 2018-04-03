require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  before(:example) do
    @sa = StringAnalyzer.new
  end

  it "True Matchers", :aggregate_failures do
    expect(@sa.contain_vowels? 'iii').to be true
    expect(@sa.contain_vowels? 'iii').to be_truthy
  end

  it "False Matchers", :aggregate_failures do
    expect(@sa.contain_vowels? 'cbg').to be false
    expect(@sa.contain_vowels? 'cbg').to be_falsey

    expect(@sa.contain_vowels? '').to be false
    expect(@sa.contain_vowels? '').to be_falsey
  end
end