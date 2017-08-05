def translate(sentence)
  ans = []
  words = sentence.split(" ")
  consonants = consonantarray()
  letters = letterarray()
  punctuation = [".", ",", "!"]

  flag = []
  punc = []
  words.each do |word|
    if word.capitalize == word
      flag << true
      word.downcase!
    else
      flag << false
    end

    if punctuation.include? word[-1]
      punc << word[-1]
      word = word[0...-1]
    else
      punc << ""
    end


    if ["a", "e", "i", "o", "u"].include? (word[0])
      ans << word + "ay"
    elsif consonants.include?(word[0] + word[1] + word[2])
      ans << word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0] + word[1])
      ans << word[2..-1] + word[0..1] + "ay"
    else
      ans << word[1..-1] + word[0] + "ay"
    end
  end

  ans.each_with_index do |word, index|
    if flag[index] == true
      word.capitalize!
    end
    ans[index] += punc[index]
  end



  return ans.join(" ")
end

def consonantarray()
  vowels = ["a", "e", "i", "o", "u"]
  alphabet = (("a".ord)..("z".ord)).to_a
  alphabet = alphabet.map{|l| l.chr}
  consonants = alphabet.select{|l| !vowels.include?(l)}
  ans = []
  letters = consonants.length

  #create an empty arrray of size n
  letters.times do |i|
    ans << consonants[i]
    ans << consonants[i] + "qu"
    letters.times do |j|
      ans << consonants[i] + consonants[j]
      letters.times do |k|
        ans << consonants[i] + consonants[j] + consonants[k]
      end
    end
  end
  ans << "qu"
  return ans

end

def letterarray()
  caps = (("A".ord)..("Z".ord)).to_a
  lowers = (("a".ord)..("z".ord)).to_a
  ans = caps.concat lowers
  ans = ans.map{|l| l.chr}
  return ans
end
