#!/usr/local/bin/ruby

# Get the index of the word Ruby in, "Hello, Ruby"
str = "Index example"
i = "Hello, Ruby".index("Ruby")
puts "The index of Ruby is #{i}"

# Print a sentence 10 times
(1..10).each do |i|
puts "This is sentence number #{i}"
end

# Random number guessing game with four tiers of feedback (too high, high, low, too low)
no = rand(100)
toohigh = no+20
toolow = no-20
print "Can you guess the number I picked? (between 0 and 100): "
usrno = gets.chomp.to_i

while usrno != no 
if usrno > toohigh
   puts "Whoa! Dude, #{usrno} is way high!"
elsif usrno > no
   puts "#{usrno} is higher than what picked"
elsif usrno < toolow
   puts "Ha! Man, #{usrno} is WAY low!"
elsif usrno < no
   puts "#{usrno} is lower than what picked"
else
   puts "Hmm, not sure that was a number!"
end
print "Try again: "
usrno = gets.chomp.to_i
end
puts "AWESOME! You got it. #{no} was the number we picked!"