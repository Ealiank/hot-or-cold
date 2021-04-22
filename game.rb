#!/usr/bin/env ruby

puts "You are playing Hot Or Cold, A simple guessing game written in ruby."
print "I'm thinking of a number from 0 to n. Please enter n: "
n = gets.to_i
random_number = rand(n)
