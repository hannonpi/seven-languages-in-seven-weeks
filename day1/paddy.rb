#!/usr/local/bin/ruby

puts "Index example"
"Hello, Ruby".index("Ruby")

puts "Print name 10 times"
1.upto(10) { puts "Paddy" }

puts "Print sentence 10 times"
1.upto(10) { |i| puts("This is sentence " + i.to_s) }

puts "Random Test"
puts "Guess a number between 1 and 10"
in_int = gets.to_i
randNum = rand(10)
until in_int == randNum
        puts("You last guess " + in_int.to_s + " was wrong")
        puts "Guess again"
        in_int = gets.to_i
end
puts "You guess right!"
