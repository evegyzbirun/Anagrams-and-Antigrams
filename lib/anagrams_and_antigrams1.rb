class AaA 
  def initialize(wordOne, wordTwo)
    @wordOne = wordOne
    @wordTwo = wordTwo
    
  end
  #1
  def anagrams 
    if (sort(@wordOne) == sort(@wordTwo))
      "These words are anagrams."
    else 
      "These words are not anagrams."
    end
  end
  def sort (stringMain)
    stringMain.chars.sort.join
  end
 #2
  def bothWords
    if (sort(@wordTwo.downcase())) == (sort(@wordOne.downcase()))
      true
    else
      false
    end
  end
  #3
  def actual_words 
    array1 = @wordOne.split('')
    array2 = @wordTwo.split('')
    
    ## .none if array1 or array2 don't have aeiouy
  
    if (array1.none? {|i| i.match("aieouy")}) || (array2.none? {|i| i.match("aieouy")}) 
    "You need to input actual words!"
    else
    false
    end
  end

  #4
  def antigrams
    array1 = @wordOne.split()
    array2 = @wordTwo.split()
    if array1.any? {|array1|array2.include?(array1)}
    "These words have some letter matches."
    else
      "These words have no letter matches and are antigrams."
    end
  end
  #5
  def sentences_match 
    array1 = @wordOne.split(" ")
    array2 = @wordTwo.split(" ")
    array11 = array1.each(i).split('')
    array22 = array2.each(i).split('')
    #string of sentences split on words and chech if they are real words
    #if all real words unite in each input in one word to check for anagram
    if array11.any? {|array11|array22.include?(array11)}
    "These words have some letter matches."
    else
      "These words have no letter matches and are antigrams."
    end

    
  

  end
end