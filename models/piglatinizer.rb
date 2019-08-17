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



    end
  end
end
