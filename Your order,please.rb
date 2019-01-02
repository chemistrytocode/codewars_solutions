#Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
#Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
#If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

def order(words)
  ordered = []
  split = words.split(" ")
  count = 0
  while count <= split.length
    split.each do |word|
      if word.include?(count.to_s)
      ordered << word
      end
    end
    count += 1
  end
  return ordered.join(" ")
end
