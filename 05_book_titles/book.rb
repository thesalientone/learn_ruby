class Book


  def title
    @title
  end

  def title=(str)
    titlewords = ["a", "an", "the", "and", "in", "of"]
    words = str.split(" ")
    words.map! do |word|
      if !titlewords.include?(word)
        word.capitalize
      else
        word
      end

    end
    words[0].capitalize!
    @title = words.join(" ")
  end




end
