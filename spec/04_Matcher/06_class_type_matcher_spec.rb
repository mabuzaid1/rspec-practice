require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'


describe StringAnalyzer do
  x=[1,2,3]
  before(:example) do
    @sa = StringAnalyzer.new
    @sa.word = 'iii'
  end

  it "Class/Type Matchers", :aggregate_failures do
    expect(@sa).to be_instance_of StringAnalyzer
    expect(@sa.to_s).to be_kind_of String
    expect(@sa.to_s).to be_a String
    expect(x).to be_an(Array)
    expect(@sa).to respond_to :has_vowels?
  end
end