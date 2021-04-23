#!/usr/bin/env ruby

puts "You are playing Hot Or Cold, A simple guessing game written in ruby."
print "I'm thinking of a number from 1 to n. Please enter n: "
n = gets.to_i
random_number = rand(1..n)
puts "What is your guess? "
guess = gets.to_i
distance = (random_number - guess).abs
if distance == 0
  puts "Congrats!"
elsif (1..5).include?(distance)
  puts "You are very hot. "
elsif (6..10).include?(distance)
  puts "You are very hot!"
elsif (11..15).include?(distance)
  puts "You are warm. "
else
  puts "You are cold\u{1F622}"
end
