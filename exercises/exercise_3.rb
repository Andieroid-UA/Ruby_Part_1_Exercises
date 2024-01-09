# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency as the value. 
# The current implementation is flawed and needs debugging.

def count_words(sentence)
  
words = sentence.split
word_counts = Hash.new(0)

words.each do |word|
word_counts[word] += 1
end

return word_counts
end

# Tests:
sentence = "hello world hello"
expected_result = count_words(sentence)
puts expected_result

sentence2 = "repeat repeat repeat"
expected_result2 = count_words(sentence2)
puts expected_result2



# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)

return "Error: Negative number" if number < 0
return 1 if number.zero?

factorial = 1
(1..number).each do |i|
factorial *= i
end
return factorial

end

# Tests:
puts calculate_factorial(5) # 20 (5! = 5 * 4 * 3 * 2 * 1)
puts calculate_factorial(0) # 1 (0! = 1)
puts calculate_factorial(1) # 1 (1! = 1)
puts calculate_factorial(10) # 3628800 (10! = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2)
puts calculate_factorial(-3) # Error message for negative numbers


# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(numbers)
return "Error: Negative number" if numbers.any? { |num| num.negative? }
return nil if numbers.empty?

sorted_numbers = numbers.sort
count = sorted_numbers.length

if count.odd?
return sorted_numbers[count / 2]
else
mid = count / 2
return (sorted_numbers[mid - 1] + sorted_numbers[mid]).to_f / 2
end
end

# Tests:
array = [1, 3, 2]
puts find_median(array) # 2

array2 = [1, 3, 5, 2, 4]
puts find_median(array2) # 3

array3 = [4, 1, 3, 2]
puts find_median(array3) # 2.5

array4 = [-4, -3, -2, -1, 1]
puts find_median(array4) # Error message for negative numbers

array5 = []
puts find_median(array5) # nil





