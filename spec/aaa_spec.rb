
require('rspec')
require('anagrams_and_antigrams')


describe("#AaA") do
  describe('#anagram') do
  it("Check if two words are anagrams") do 
    check = AaA.new("time","imte")
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("Check if two words are not anagrams") do 
    check = AaA.new("red","good")
    expect(check.anagram).to(eq("These words are antigrams."))
  end
  it("words might have different cases but should still be anagrams") do 
    check = AaA.new('tEA','EaT')
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("check if the inputs are words, so if they have vowel (a, i, e, o, u) or y") do 
    check = AaA.new('pkmgy','mgpky')
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("What are the words in the two sentences anagrams or antigrams?") do 
    check = AaA.new('The Morse Code','Here come dots')
    expect(check.anagram).to(eq("These words are anagrams." ))
  end
  it("What are the words in the two sentences anagrams or antigrams?") do 
    check = AaA.new('Hi','bye bye')
    expect(check.anagram).to(eq("These words are antigrams." ))
  end
end
end