require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  x=[1,2,3]
  y={:name=>'Sara', :age=>20}

  before(:example) do
    @sa = StringAnalyzer.new
    @sa.word ='iii'
  end

  it "Comparison Matchers", :aggregate_failures do
    expect(2).to be > 1

    expect(1).to be >= 1

    expect(1).to be < 2

    expect(2).to be <= 2

    expect(3).to be_between(1,3).inclusive

    expect(3).not_to be_between(1,3).exclusive

    expect(15).to be_within(5).of(10)

    expect(1..10).to cover(10,5)

    expect(x).to include(1)

    expect(y).to include(:name)

    expect(y).to include(:name=>'Sara')

    expect('test string').to include('t')

    expect(x).to start_with(1)

    expect('test string').to start_with('te')

    expect(x).to end_with(3)

    expect('test string').to end_with('ing')

    expect(x).to match_array([2,1,3])

    expect(x).to contain_exactly(1,3,2)

    expect('test string').to match /TEST/i

    expect(@sa).to have_attributes(:word=> 'iii')

    expect(5+5).to satisfy{|v|true && v.equal?(10) }
  end
end