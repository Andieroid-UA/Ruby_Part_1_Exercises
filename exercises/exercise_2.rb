# 2a. The script is supposed to define a method calculate_average that takes an array of numbers and returns the average of those numbers.
# However, the current implementation is faulty and does not produce the correct result.

def calculate_average(numbers)

numerator = numbers.reduce(0) { |a, v| a + v }
denominator = numbers.count
mean = numerator / denominator
return mean
end

# Arrays:
array = [1, 2, 3, 4, 5]
puts calculate_average(array) # => 3

array2 = [10, 20, 30, 40, 50]
puts calculate_average(array2) # => 30

array3 = [-3, -2, -1, 0, 1, 2, 3]
puts calculate_average(array3) # => 0


# 2b. The script is supposed to define a method filter_long_strings that takes an array of strings and an integer (length). 
# The method should return a new array containing only the strings that are longer than the specified length. However, the current implementation is faulty and does not produce the correct result.

def filter_long_strings(strings, length)

filtered_strings = strings.select { |str| str.length > length }
return filtered_strings
end

# Arrays:
arr = ['apple', 'pear', 'banana', 'plum', 'cherry']
filtered = filter_long_strings(arr, 4)
puts filtered.inspect # => ['apple', 'banana', 'cherry']

arr2 = ['a', 'ab', 'abc', 'abcd', 'abcde']
filtered = filter_long_strings(arr, 2)
puts filtered.inspect # => ['abc', 'abcd', 'abcde']

arr3 = []
filtered = filter_long_strings(arr, 3)
puts filtered.inspect # => []

# 2c. The script is intended to define a method find_max that takes an array of numbers and returns the largest number in the array. 
# The current implementation, however, has one or more bugs.

def find_max(numbers)

numbers = numbers.sort
find_max = numbers.max
return find_max
  
end

#Arrays:
arr = [1, 3, 5, 7, 9]
numbers = find_max(arr)
puts numbers # => 9

arr2 = [-10, -20, -30, -40, -50]
numbers = find_max(arr2)
puts numbers # => -10

arr3 = [0]
numbers = find_max(arr3)
puts numbers # => 0