require "enumerator"

def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(*args)

  if args.length == 2
    ans = args[0]
    (args[1] -1).times do
      ans += " " + args[0]
    end
    return ans
  else
    return args[0] + " " + args[0]
  end

end

def start_of_word(word, num)
  word[0...(num)]
end

def first_word(sentence)
  words = sentence.split(" ")
  words[0]

end

def titleize(words)

  wordList = words.split(" ")
  if wordList.length == 1
    return wordList[0].capitalize
  end
  ans = ""
  wordList.each_with_index do |word, index|

    if index == 0
      ans += word.capitalize
    elsif !["over", "the", "a", "and"].include?(word)
      ans += " " + word.capitalize
    else
      ans += " " + word

    end

  end

  return ans
end
