require_relative '../unit/string_analyzer'
require 'spec_helper'

include ColorizingThings


describe StringAnalyzer do

  context "With valid input" do
    #NOT ISLOATED  Example
    p_msg 'NOT ISLOATED EXAMPLE'
    it "should detect when a string contains vowels" do
      #Setup
      sa = StringAnalyzer.new
      #Execute
      test_string = 'iii'
      #Excpectaion
      expect(sa.has_vowels? test_string).to be true
    end
    p_done


    p_msg 'ISLOATED EXAMPLE'
    #ISLOATED  Example
    context "should detect when a string doesn't contain vowels" do
      it {expect(StringAnalyzer.new.has_vowels?('bcdfg')).to be false}
      it {expect(StringAnalyzer.new.has_vowels?('')).to be false}
    end
    p_done
  end
end