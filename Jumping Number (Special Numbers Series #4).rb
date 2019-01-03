# Definition
# Jumping number is the number that All adjacent digits in it differ by 1.

# Task
# Given a number, Find if it is Jumping or not .

# Warm-up (Highly recommended)
# Playing With Numbers Series
# Notes
# Number passed is always Positive .

# Return the result as String .

# The difference between ‘9’ and ‘0’ is not considered as 1 .

# All single digit numbers are considered as Jumping numbers.

def jumping_number(n)
  n.to_s.chars.map(&:to_i).each_cons(2) { |x,y| return "Not!!" if (x-y).abs != 1 }
  return "Jumping!!"
end
