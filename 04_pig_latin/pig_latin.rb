#write your code here
def translate input
  inputs = input.split(' ')
  if inputs.length == 1
    output = translate_one_word(input)
  else
    output = ""
    inputs.each do |word|
      output = output + translate_one_word(word) + " "
    end
    output.chop!
  end
end

def translate_one_word input
  if input =~ /[A-Z]/
    capitalize = true
    input.downcase!
  else
    capitalize = false
  end
  if input =~ /qu/
    output = "#{$'}#{$`}#{$&}ay"
  elsif input =~ /\A[Yy]/ #handles consonat 'y's at the begining of the word
    output = "#{$'}#{$`}#{$&}ay"
  elsif input =~ /[AEIOUYaeiouy]/ #treats 'y's as vowels if they appear later in the word
    output = "#{$&}#{$'}#{$`}ay" # $& is the found vowel, $' is the sring after to vowel, and $` is the string before the vowel`
  else
    puts "Invalid input: All words must contain a vowel"
  end
  output = fix_punctuation(output)
  if capitalize == true
    output.capitalize!
  else
  end
  return output
end

def fix_punctuation input
  if input =~ /[,.:;!?]/
    output = "#{$`}#{$'}#{$&}"
  else
    output = input
  end
end
