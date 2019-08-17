class PigLatinizer

  def piglatinize_sentence(words)
    words.split(" ").map{|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(word)
    if word.downcase =~ /^[aeiou]/
      "#{word}way"
    else
      i = word.downcase.index(/[aeiou]/)
      word[i..-1] + word[0...i] + 'ay'
    end
  end
end
