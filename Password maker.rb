#One suggestion to build a satisfactory password is to start with a memorable phrase or sentence and make a password by extracting the first letter of each word.

#Even better is to replace some of those letters with numbers (e.g., the letter O can be replaced with the number 0):

#instead of including i or I put the number 1 in the password;
#instead of including o or O put the number 0 in the password;
#instead of including s or S put the number 5 in the password.
#Examples:
#"Give me liberty or give me death"  --> "Gml0gmd"
#"Keep Calm and Carry On"            --> "KCaC0"

def make_password(phrase)
  phrase_return = []
  phrase.split(" ").each do |word|
    phrase_return << word[0]
  end
  phrase_return = phrase_return.join("")
  phrase_return.gsub("i", "1").gsub("I", "1").gsub("o", "0").gsub("O", "0").gsub("s", "5").gsub("S", "5")
end
 
