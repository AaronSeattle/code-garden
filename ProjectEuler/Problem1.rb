puts 'Project Euler: Problem 1: Find the sum of all the multiples of 3 or 5 below 1000.'

sum = 0
for i in 1..999
  if (i % 3 == 0)
    sum += i
  elsif (i % 5 == 0)
    sum += i
  end
end

puts
puts 'Sum: ' + sum.to_s

  