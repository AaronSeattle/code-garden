puts 'Project Euler: Problem 6: Find the difference between the sum of the squares of the '
puts '                          first one hundred natural numbers and the square of the sum.'

sum = 0
sum_of_squares = 0
square_of_sums = 0
for i in 1..100
  sum += i
  sum_of_squares += i * i
end
square_of_sums = sum * sum

puts
puts 'Sum of squares: ' + sum_of_squares.to_s
puts 'Sum of squares: ' + square_of_sums.to_s
puts
puts 'Difference: ' + (square_of_sums - sum_of_squares).to_s
