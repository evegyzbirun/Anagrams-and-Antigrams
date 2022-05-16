require('pry')
require('rspec')
require('anagrams_and_antigrams')

describe("#AaA") do
  it("Check if two words are anagrams") do 
    check = AaA.new('time','tmei')
    expect(check.anagrams).to(eq("These words are anagrams."))
  end
  it("Check if two words are not anagrams") do 
    check = AaA.new('test','ttase')
    expect(check.anagrams).to(eq("These words are not anagrams."))
  end
  it("words might have different cases but should still be anagrams") do 
    check = AaA.new('TEA','EaT')
    expect(check.bothWords).to(eq(true))
  end
  it("check if the inputs are words, so if they have vowel (a, i, e, o, u) or y") do 
    check = AaA.new('pkmgy','mgpky')
    expect(check.actual_words).to(eq("You need to input actual words!"))
  end
  it("If phrases aren't anagrams, the method should check whether they are actuallyantigrams") do 
    check = AaA.new('hizr','bye')
    expect(check.antigrams).to(eq("These words have no letter matches and are antigrams."))
  end
  it("Account for two sentences being compared as anagrams or antigrams") do 
    check = AaA.new('The Morse Code','Here come dots')
    expect(check.sentences_match).to(eq("the two sentences are anagrams." ))
  end
  #it("Account for two sentences being compared as anagrams or antigrams") do 
    #check = AaA.new('The Morse Code','Here come dots!')
    #expect(check.sentences_match).to(eq("the two sentences are antigrams." ))
  #end
end