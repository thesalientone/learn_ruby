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
    letters.times do |j|
      ans << consonants[i] + consonants[j]
      letters.times do |k|
        ans << consonants[i] + consonants[j] + consonants[k]
      end
    end
  end
  return ans

end

a = consonantarray()
