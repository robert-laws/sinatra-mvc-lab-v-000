class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end

  def translate str
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end

end
