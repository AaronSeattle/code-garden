puts 'Project Euler Problem 5: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?'

start = Time.now

answer = (1..20).inject(:lcm) # used built-in ruby least common multiple (lcm) function

finish = Time.now
puts "___ #{finish - start} seconds: Calculation completed "
puts "answer: #{answer}"
