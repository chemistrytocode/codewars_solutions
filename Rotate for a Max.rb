# Take a number: 56789. Rotate left, you get 67895.
# 
# Keep the first digit in place and rotate left the other digits: 68957.
# 
# Keep the first two digits in place and rotate the other ones: 68579.
# 
# Keep the first three digits and rotate left the rest: 68597. Now it is over since keeping the first four it remains only one digit which rotated is itself.
# 
# You have the following sequence of numbers:
# 
# 56789 -> 67895 -> 68957 -> 68579 -> 68597
# 
# and you must return the greatest: 68957.
# 
# Calling this function max_rot (or maxRot or ... depending on the language)
# 
# max_rot(56789) should return 68957

def max_rot(n)
  na = n.to_s.chars
  na.length.times.each_with_object([n]) do | i, arr |
	arr << (na << na.delete_at(i)).join.to_i
end.max


#Converts n to array of characaters e.g. 1234 => ["1","2","3","4"]
#Creates duplicate arrays with indexes so [0, 1234], [1, 1234] up to the length of digits.
#Very clever bit
#Determines portion to be deleted of na by index e.g. ["1","2","3","4"] if index is 1 then "1" is to be removed.
#Removes this from na, so becomes ["2","3","4"], but keeps the reference and shovels it back on so it's now ["2","3","4","1"]
#The .to_i at this stage converts BOTH to integers so it goes [2,3,4] << 1 = [2,3,4,1]
#Shovels this [2,3,4,1] into an array.
#Finally it determines the highest value.
