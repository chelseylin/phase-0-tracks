#encrypt method
#create a result string and set to empty
#for loop every char in string
# => if the char is a space
# =>    attach space to result string
# => else use .next to increment then store in result

def encrypt(str)
  result = ""
  for i in 0...str.length
    char = str[i]
    if char == " "
      result += " "
    elsif char == "z"
      result += "a"
    else
      result += char.next
    end
  end

  return result
end

#decrypt method
#create an empty result string
#use for loop to go through every char in string
# => check for space
# => locate the char's index in codex
# => attach previous char to result
def decrypt(str)
  decoder_ring = "abcdefghijklmnopqrstuvwxyz"
  result = ""
  for i in 0...str.length
    char = str[i]
    if char == " "
      result += " "
    else
      result += decoder_ring[decoder_ring.index(char)-1]
    end
  end

  return result
end

puts "#{decrypt("bcd")}"
puts "#{decrypt("afe")}"