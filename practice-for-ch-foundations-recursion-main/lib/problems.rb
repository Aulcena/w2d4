# Write a method, pow(base, exponent), that takes in two numbers.
# The method should calculate the base raised to the exponent power.
# You can assume the exponent is always positive.
#
# Solve this recursively!
#
# Examples:
#
# pow(2, 0) # => 1
# pow(2, 1) # => 2
# pow(2, 5) # => 32
# pow(3, 4) # => 81
# pow(4, 3) # => 64
def pow(base, exponent)
    return 1 if exponent  == 0 # base case (2^0 == 1) line 9 
    base * pow(base, exponent - 1)
end
#find base case
#work way up incremtally 

# 2 * 2 * 2 * 2
#     2 * 2 * 2       base * base ** exponet - 1     
#         2 * 2
#             2


# Write a method, lucas_number(n), that takes in a number.
# The method should return the n-th number of the Lucas Sequence.
# The 0-th number of the Lucas Sequence is 2.
# The 1-st number of the Lucas Sequence is 1
# To generate the next number of the sequence, you add up the previous two 
# numbers.
#
# For example, the sequence begins: 2, 1, 3, 4, 7, 11, ...
#
# Solve this recursively!
#
# Examples:
#
# lucas_number(0)   # =>    2
# lucas_number(1)   # =>    1
# lucas_number(2)   # =>    3
# lucas_number(3)   # =>    4
# lucas_number(5)   # =>    11
# lucas_number(9)   # =>    76

def lucas_number(n)
    return 1 if n == 1
    return 2 if n == 0
    lucas_number(n - 1) + lucas_number(n - 2)
   
end


# Write a method, sum_array(array), that takes in an array of numbers.
# The method should return the total sum of the elements.
# 
# Solve this recursively!
#
# Examples:
#
# sum_array([])             # => 0
# sum_array([5])            # => 5
# sum_array([5, 2])         # => 7
# sum_array([4, 10, -1, 2]) # => 15
def sum_array(array)
  return 0 if array.empty?
  array[0] + sum_array(array[1..-1])
end


# Write a method, reverse_string(str), that takes in a string.
# The method should return the string with its characters in reverse order.
#
# Solve this recursively!
#
# Examples:
# 
# reverse_string("")            # => ""
# reverse_string("c")           # => "c"
# reverse_string("internet")    # => "tenretni"
# reverse_string("friends")     # => "sdneirf"
def reverse_string(str)
    return "" if str == ""
    reverse_string(str[1..-1]) + str[0]
end


# A 1-dimensional array is also known as a flattened array.
# Write a method, flatten(data), that accepts a single argument. The
# method should take in an array of any dimension and return the flattened
# version of that array. Solve this recursively.
#   
# Hint:
#  - if the argument is not an array, then you have reached the base case
#  - look up the documentation for how to check if data is an array or not
#
# Examples:
#
# array_1 = [1, 2, [[3, 4], [5, [6]]], [7, 8]]
# flatten(array_1)      # => [ 1, 2, 3, 4, 5, 6, 7, 8 ]
#
# array_2 = ['this', ['problem', 'is'], [['pretty', 'tough'], [[':)']]]]
# flatten(array_2)      # => [ 'this', 'problem', 'is', 'pretty', 'tough', ':)' ]
#
# flatten('base case')  # => [ 'base case' ]
#
# Another Hint:
#
# That last example might be confusing because it passes in a string instead of
# an array. If data is not an array, then you can consider it as a 0-dimensional
# array.
#
#     0-dimensional array: 'some data'
#     1-dimensional array: ['some data']
#     2-dimensional array: [['some data']]
#     3-dimensional array: [[['some data']]]
def flatten(data)
    return [data] if data.kind_of?(String)

      flatten(data.flatten)  << []
end
