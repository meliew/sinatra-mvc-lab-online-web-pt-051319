class PigLatinizer

  def piglatinize_sentence(words)
    words.split(" ").map{|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(word)
    if word =~ /^[aeiou]/
      "#{word}way"
    else
      i = word.index(/[aeiou]/)
      word[i..-1] + word[0...i] + 'ay'
    end
  end
end
