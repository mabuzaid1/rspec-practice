class StringAnalyzer

  attr_accessor :word

  def contain_vowels?(str)
    !!(str =~ /[aeiou]+/i)
  end

  def vowels?
    !!(word =~ /[aeiou]+/i)
  end

  def has_vowels?
    !!(word =~ /[aeiou]+/i)
  end
end