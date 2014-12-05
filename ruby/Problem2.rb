puts 'Project Euler: Problem 2: By considering the terms in the Fibonacci sequence whose values'
puts '                          do not exceed four million, find the sum of the even-valued terms.'

fib1 = 1
fib2 = 2
temp = 0
sum = 0
while fib2 < 4000000
  if (fib2 % 2 == 0)
    sum += fib2
    #puts 'Even fib2: ' + fib2.to_s
  end
  temp = fib1 + fib2
  fib1 = fib2
  fib2 = temp
end

puts
puts 'Sum: ' + sum.to_s
