#!/usr/bin/env ruby


puts "You are playing Hot Or Cold, A simple guessing game written in ruby. To exit the game, please press q"
print "How many times do you want to guess? "
num_guess = gets.to_i
print "I'm thinking of a number from 1 to n. Please enter n: "
n = gets.to_i
random_number = rand(1..n)
(1..).each do |i|
  if i > num_guess
    puts "You have exeeded your #{num_guess} guesses. My number was #{random_number}. "
   break
  end

  print "what is your ##{i} guess? "
  guess = gets.to_i
  if guess == 0
    print "You quit the game!"
    break 
  end

  distance = (random_number - guess).abs
  case distance
  when 0 
    puts "Congrats! You got my number right \u{1F973}"
  when 1..5
    puts "You are very hot \u{1F92F}"
  when 6..10
    puts "You are hot \u{1F975}"
  when 11..15
    puts "You are warm \u{1F912}"
  when (16..)
    puts "You are cold \u{1F976}"
  end

  break if distance == 0
end
