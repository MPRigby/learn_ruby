#write your code here
def echo input
  output = input
end

def shout input
  output = input.upcase
end

def repeat input, times=2
  output = (input+' ')*times
  return output.chop
end

def start_of_word input, letters=1
  output = input[0..(letters-1)]
end

def first_word input
  output = input.split(' ')
  return output[0]
end

def titleize input
  small_words = ['and', 'the', 'or', 'over']
  first_word = true
  output = input.downcase.split(' ').map do |word|
    if first_word==true
      first_word=false
      word.capitalize
    elsif small_words.any? {|small_word| word.include? small_word}
      word
    else
      word.capitalize
    end
  end
  output = output.join(' ')
end
