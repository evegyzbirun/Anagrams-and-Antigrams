
require('rspec')
require('anagrams_and_antigrams')


describe("#AaA") do
  describe('#anagram') do
  it("Check if two words are anagrams") do 
    check = AaA.new("time","imte")
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("Check if two words are antigrams.") do 
    check = AaA.new("rei","good")
    expect(check.anagram).to(eq( "These words are antigrams."))
  end
  it("words might have different cases but should still be anagrams") do 
    check = AaA.new('tEA','EaT')
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("check if the inputs are real words, so if they have vowels (a, i, e, o, u) or y") do 
    check = AaA.new('pkmgy','mgpky')
    expect(check.anagram).to(eq("These words are anagrams."))
  end
  it("check if the inputs are real words, so if they have vowels (a, i, e, o, u) or y") do 
    check = AaA.new('pkmg','mgpk')
    expect(check.anagram).to(eq("These words are not words."))
  end
  it("What are the words in the two sentences anagrams or antigrams?") do 
    check = AaA.new('The Morse Code','Here come dots!')
    expect(check.anagram).to(eq("These words are anagrams." ))
  end
  it("What are the words in the two sentences anagrams or antigrams?") do 
    check = AaA.new('Hi','bye bye')
    expect(check.anagram).to(eq("These words are antigrams." ))
  end
  it("if the sentences have fake words") do 
    check = AaA.new('w frt gvg','fwt r gvg')
    expect(check.anagram).to(eq("These words are not words."))
  end
  it("if two words are different length or some letter math , but not all") do 
    check = AaA.new('Mut','Mule')
    expect(check.anagram).to(eq("These words aren't anagrams or antigrams."))
  end
end
end