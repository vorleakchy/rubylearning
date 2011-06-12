=begin

  Exercise15 Select all correct outputs for the following program:
for i, j in [[1, 2], [3, 4], [5, 6]]
p [i, j]
end

  Answers:
  1. [[1, 2], nil]
  [[3, 4], nil]
  [[5, 6], nil]
   
  2. [nil, [1, 2]]
  [nil, [3, 4]]
  [nil, [5, 6]]
   
  3. [1, 2]
  [3, 4]
  [5, 6] 
   
  4. Syntax Error

=end

# Answer is 3 because for..in will loop through each element in array [[1, 2], [3, 4], [5, 6]], and it will be parallel assignment to i and j variables. e.g: the first element i, j = [1, 2] this means i = 1 and j = 2, then p [i, j] will print [1, 2]. Finally it will loop in subsequence.
