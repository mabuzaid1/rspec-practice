require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'

include ColorizingThings

describe StringAnalyzer do
  #Setup
  let!(:sa) do
    p_msg "run let"
    StringAnalyzer.new
    end

  after(:example) do
    puts "Hook After "
  end

  context "With valid input" do
    puts "First Example running"
    it "should detect when a string contains vowels" do
      expect(sa.contain_vowels? ('iii')).to be true
    end

    it "should detect when a string contains vowels" do
      expect(1).to eq(1)
    end

    #ISOLATED  Example
    context "should detect when a string doesn't contain vowels" do
      puts "Second Example running"
      it {expect(sa.contain_vowels?('bcdfg')).to be false}

      puts "Third Example running"
      it {expect(sa.contain_vowels?('')).to be false}
    end
  end
end