require 'spec_helper'

describe StringAnalyzer do

  context "With valid input" do
    #NOT ISLOATED  Example
    it "should detect when a string contains vowels" do
      #Setup
      sa = StringAnalyzer.new
      #Execute
      test_string = 'iii'
      #Excpectaion
      expect(sa.has_vowels? test_string).to be true
    end

    it "not implemented example"

    it "Another Pending Example" do
      pending("For Debugging purpose")
      sa = StringAnalyzer.new
      #Execute
      test_string = 'uuu'
      #Excpectaion
      expect(sa.has_vowels? test_string).to be true
    end

    xit "Pending Example" do
      sa = StringAnalyzer.new
      #Execute
      test_string = 'eee'
      #Excpectaion
      expect(sa.has_vowels? test_string).to be true
    end

    it "Another Pending Example" do
      skip("For Debugging purpose")
      sa = StringAnalyzer.new
      #Execute
      test_string = 'uuu'
      #Excpectaion
      expect(sa.has_vowels? test_string).to be true
    end



    #ISLOATED  Example
    context "should detect when a string doesn't contain vowels" do
      it {expect(StringAnalyzer.new.has_vowels?('bcdfg')).to be false}
      it {expect(StringAnalyzer.new.has_vowels?('')).to be false}
    end
  end
end