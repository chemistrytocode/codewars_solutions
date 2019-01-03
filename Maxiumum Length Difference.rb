#You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.

#Find max(abs(length(x) − length(y)))

#If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).

def mxdiflg(a1, a2)
	return -1 if a1.empty? || a2.empty?
  a1.product(a2).map {|x,y| (x.length - y.length).abs}.max
end

# Returns -1 if either array is empty
# Product returns a new array of all combinations with each element 
# containing a combination. e.g. [1,2,3],[4,5,6] => [1,4],[1,5],[1,6],[2,4] etc...
# Map iterates over the new array setting each two values to those found in elements
# Finds the difference between each length and calculates absolute value.
# Absolute value turns negatives to positives e.g. -3 to 3.
# Returns the max value and therefore highest difference.
