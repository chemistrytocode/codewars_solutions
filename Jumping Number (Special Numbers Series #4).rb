def jumping_number(n)
  n.to_s.chars.map(&:to_i).each_cons(2) { |x,y| return "Not!!" if (x-y).abs != 1 }
  return "Jumping!!"
end
