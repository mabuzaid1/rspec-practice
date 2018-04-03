require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  x=[1,2,3]
  y={:name=>'Sara', :age=>20}


  before(:example) do
    @sa = StringAnalyzer.new
    @sa.word ='iii'
  end

 it "Predicate Matchers", :aggregate_failures do
   expect(1).to be_integer

   expect(1).to be_odd

   expect(2).to be_even

   expect(0).to be_zero

   expect(1).to be_nonzero

   expect(x).not_to be_nil

   expect(x).not_to be_empty

   expect(y).not_to be_empty

   expect(y).to have_key(:name)

   expect(y).to have_value('Sara')
 end

  it "Custom Method Matchers", :aggregate_failures do
    expect(@sa).to be_vowels
    expect(@sa).to have_vowels
  end
end