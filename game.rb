#!/usr/bin/env ruby


puts "You are playing Hot Or Cold, A simple guessing game written in ruby."
print "I'm thinking of a number from 1 to n. Please enter n: "
n = gets.to_i
random_number = rand(1..n)
print "What is your guess? "
loop do
  guess = gets.to_i
  distance = (random_number - guess).abs
  case distance
  when 0 
    puts "Congrats! You got my number right\u{1F973}"
  when 1..5
    puts "You are very hot\u{1F92F}"
  when 6..10
    puts "You are hot\u{1F975}"
  when 11..15
    puts "You are warm\u{1F912}"
  when (16..)
    puts "You are cold\u{1F976}"
  end

  break if distance == 0
end
