class PigLatinizer


  def split_sentence(sentence)
    @word_array = sentence.split(" ")
  end

  def piglatinize_sentence(words)
    new_array = []
    words.each do |w|
      piglatinize(w)
      new_array << w
    end
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
