require 'spec_helper'
require_relative '../unit/string_analyzer/string_analyzer'

describe StringAnalyzer do

  before(:example) do
  @sa = StringAnalyzer.new
end

  xit "Error Matchers", :aggregate_failuresdo do
      expect { 1/0 }.to raise_error(ZeroDivisionError)
      expect { 1/0 }.to raise_error("divided by 0")
      expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError)
  end

  it "Error Matchers", :aggregate_failures do
    expect { @sa.word('iii') }.to raise_error(ArgumentError)
    expect { @sa.word('iii') }.to raise_error("wrong number of arguments (given 1, expected 0)")
    expect { @sa.word('iii') }.to raise_error("wrong number of arguments (given 1, expected 0)", ArgumentError)
  end
end