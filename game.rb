#!/usr/bin/env ruby

puts "You are playing Hot Or Cold, A simple guessing game written in ruby."
print "I'm thinking of a number from 1 to n. Please enter n: "
n = gets.to_i
random_number = rand(1..n)
print "What is your guess? "
guess = gets.to_i
distance = (random_number - guess).abs
case distance
when 0 
  puts "Congrats! You got my number right!"
when 1..5
  puts "You are very hot!"
when 6..10
  puts "You are hot!"
when 11..15
  puts "You are warm. "
when (16..)
  puts "You are cold\u{1F622}"
end
