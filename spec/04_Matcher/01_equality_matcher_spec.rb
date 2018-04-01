require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do
  before(:example) do
    @sa = StringAnalyzer.new
  end

  it "Equality/Identity Matchers eq" do
    expect(@sa.has_vowels? 'cbg').to eq false
  end

  it "Equality/Identity Matchers eql" do
    expect(@sa.has_vowels? 'cbg').to eql false
  end

  it "Equality/Identity Matchers be" do
    expect(@sa.has_vowels? 'cbg').to be false
  end

  it "Equality/Identity Matchers equal" do
    expect(@sa.has_vowels? 'cbg').to equal false
  end

end