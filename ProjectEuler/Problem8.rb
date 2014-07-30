puts 'Project Euler: Problem 8: Largest product in a series '

size = 13
max_product = 1
temp_product = 1
series_str = "73167176531330624919225119674426574742355349194934"+
"96983520312774506326239578318016984801869478851843"+
"85861560789112949495459501737958331952853208805511"+
"12540698747158523863050715693290963295227443043557"+
"66896648950445244523161731856403098711121722383113"+
"62229893423380308135336276614282806444486645238749"+
"30358907296290491560440772390713810515859307960866"+
"70172427121883998797908792274921901699720888093776"+
"65727333001053367881220235421809751254540594752243"+
"52584907711670556013604839586446706324415722155397"+
"53697817977846174064955149290862569321978468622482"+
"83972241375657056057490261407972968652414535100474"+
"82166370484403199890008895243450658541227588666881"+
"16427171479924442928230863465674813919123162824586"+
"17866458359124566529476545682848912883142607690042"+
"24219022671055626321111109370544217506941658960408"+
"07198403850962455444362981230987879927244284909188"+
"84580156166097919133875499200524063689912560717606"+
"05886116467109405077541002256983155200055935729725"+
"71636269561882670428252483600823257530420752963450"

puts "Series of numbers of length: #{series_str.length}"

# Solution strategy / notes:
# * any series with a zero's product would be zero, hence not the largest product.
# * split the series up into sections bounded by zeros and work on each one
# rather than brute force through the whole thing.
# * loop over each chunk from the series, discarding any that aren't of sufficient length
# * iterate through each chunk to find the product and keep tabs on the largest thus far

series_array = series_str.split("0") 

# This method will multiply all the elements of an array to determine their product
def multiply_each (array, product=1)
  array.each do |x|
    product *= x
  end
  return product
end

series_array.each do |chunk| 
# series_array.each.with_index(1) do |chunk, i|
  if chunk != nil && chunk.length > size
    #puts "#{i}: #{chunk}"
    for x in 0..(chunk.length - size)
      temp_chunk = chunk[x,size]
      temp_product = multiply_each temp_chunk.split(//).map(&:to_i)
      #puts "  #{x}: #{temp_chunk} #{temp_product}"
      if temp_product > max_product
        max_product = temp_product
      end
      temp_product = 1
    end
  end
end

puts
puts "Max product of #{size} adjacent digits = #{max_product}"
