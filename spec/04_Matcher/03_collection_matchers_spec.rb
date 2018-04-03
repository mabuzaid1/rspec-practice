require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  x=[1,2,3]
  y={:name=>'Sara', :age=>20}

  before(:example) do
    @sa = StringAnalyzer.new
    @sa.word ='iii'
  end

  it "Regular Ecperssion Matchers", :aggregate_failures do
    expect('test string').to match /TEST/i

    expect('test string').to match /TEST|STRING/i

    expect('test string').to match /[aeiou]/i

    expect('2000').to match(/\d{4}/)

    expect('2000').to match(/\d{2,}/)

    expect('200').to match(/\d{3,4}/)
  end


  it "Satisfy Matchers", :aggregate_failures do
    expect(5+5).to satisfy{|v|true && v.equal?(10) }
  end

  it "Array Matchers", :aggregate_failures do
    expect(x).to include(1)

    expect(x).to start_with(1)

    expect(x).to end_with(3)

    expect(x).to match_array([2,1,3])

    expect(x).to contain_exactly(1,3,2)
  end

  it "Hash Matchers", :aggregate_failures do

    expect(y).to include(:name)

    expect(y).to include(:name=>'Sara')
  end

  it "String Matchers", :aggregate_failures do
    expect('test string').to include('t')

    expect('test string').to start_with('te')

    expect('test string').to end_with('ing')
  end

  it "Attribute Matchers", :aggregate_failures do
    expect(@sa).to have_attributes(:word=> 'iii')
  end
end