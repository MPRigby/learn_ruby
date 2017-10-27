class Book
  attr_reader :title

  def title=(new_title)
    small_words = ['a', 'an', 'or', 'in', 'the', 'and', 'over', 'of']
    words = new_title.downcase.split(" ")
    words = [words[0].capitalize] + words[1..-1].map do |word|
      if small_words.include? word
        word
      else
        word.capitalize
      end
    end
    @title = words.join(' ')
  end
end
