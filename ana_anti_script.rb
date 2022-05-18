#!/usr/bin/ruby
require('./lib/anagrams_and_antigrams')
puts 'Welcome to the Anagrams and Antigrams'
puts 'Please enter a first word'
wordOne = gets.chomp
puts 'Please enter a second word'
wordTwo = gets.chomp
puts "The first word you entered is #{wordOne}"
puts "The second word you entered is #{wordTwo}"
final = AaA.new(wordOne, wordTwo)
puts "The two inputs are:#{final.anagram}"


