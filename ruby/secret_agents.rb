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

puts "#{encrypt("abc xyz")}"
#decrypt method