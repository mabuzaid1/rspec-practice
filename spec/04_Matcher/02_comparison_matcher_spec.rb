require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do

  it "Numeric Matchers", :aggregate_failures do
    expect(2).to be > 1

    expect(1).to be >= 1

    expect(1).to be < 2

    expect(2).to be <= 2

    expect(3).to be_between(1,3).inclusive

    expect(3).not_to be_between(1,3).exclusive

    expect(15).to be_within(5).of(10)

    expect(1..10).to cover(10,5)
  end

  it "Alphabetic Comparison Matchers", :aggregate_failures do
    expect('b').to be > 'a'

    expect('b').to be >= 'b'

    expect('a').to be < 'b'

    expect('a').to be <= 'a'

    expect('a').to be_between('a','c').inclusive

    expect('a').not_to be_between('a','c').exclusive

    expect('a'..'f').to cover('b','c')

    expect('a'..'f').to cover('bc')
  end

end