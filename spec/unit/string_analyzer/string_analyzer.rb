class StringAnalyzer

  attr_accessor :word

  def has_vowels?(word)
    !!(word =~ /[aeiou]+/i)
  end
end