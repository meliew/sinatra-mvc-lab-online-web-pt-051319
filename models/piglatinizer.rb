class PigLatinizer

  def piglatinize(input)
    input.split(" ").map{|w| piglatinize_word(w)}.join(" ")
  end

  def piglatinize_word(word)
    if word.downcase =~ /^[aeiou]/
      "#{word}way"
    else
      i = word.downcase.index(/[aeiou]/)
      word[i..-1] + word[0...i] + 'ay'
    end
  end
end
