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
    elsif
      #if there is a consonant
       if word[0] !=~ /^[aeiou]/ && word[1] =~ /[aeiou]/
        new_word = word.split(" ")
        #how do I move the first letter to the end of the array?
        #rejoin the word and add "ay" to the end
        #Next - check if there is a second consonant after the first
        #if there is, then add both consonants to the end of the word, and then add "way"
        #then, if there are multiple words, I need to add them back together as a phrase
        #put the phrase on the piglatinize.erb page
      end
    end
  end
end
