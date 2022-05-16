require('pry')

class AaA 
  attr_reader :wordOne, :wordTwo
  def initialize(wordOne, wordTwo)
    @wordOne = wordOne.downcase.delete(' ')
    @wordTwo = wordTwo.downcase.delete(' ')
    @wordOne.gsub(/[A-Za-z]/,'')
    @wordTwo.gsub(/[A-Za-z]/,'')
  end
# 3 steps
  def anagram()
    if !(@wordOne =~ /[aeiouy]/) && !(@wordTwo =~ /[aeiouy]/)
      "These words are not words."
    elsif (@wordOne.chars.sort == @wordTwo.chars.sort)
      "These words are anagrams."
    else (@wordOne.chars.sort != @wordTwo.chars.sort)
      "These words are antigrams."
    end
  end
end


#if user_words.is_word
#  if user_words.anagram
#    puts "Those words are anagrams!"
#  elsif user_words.antigram
#    puts "Those words are antigrams"


 