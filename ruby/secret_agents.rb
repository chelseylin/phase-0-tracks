#encrypt method

def encrypt(str)
  #create a result string and set to empty
  result = ""
  #for loop every char in string
  for i in 0...str.length
    char = str[i]
    #check if char is space
    if char == " "
      result += " "
    #check if char is "z"
    elsif char == "z"
      result += "a"
    #use .next to increment then store in result
    else
      result += char.next
    end
  end

  return result
end

#decrypt method
def decrypt(str)
  decoder_ring = "abcdefghijklmnopqrstuvwxyz"
  #create an empty result string
  result = ""
  #use for loop to go through every char in string
  for i in 0...str.length
    char = str[i]
    #check for space
    if char == " "
      result += " "
    #locate the previous char and attach it to result
    else
      result += decoder_ring[decoder_ring.index(char)-1]
    end
  end

  return result
end

# puts "#{decrypt("bcd")}"
# puts "#{decrypt(encrypt("swordfish"))}"

#Interface
#Ask user if they want to encrypt or decrypt
puts "Would you like to encrypt or decrypt a message?"
puts "encrypt = e / decrypt = d"
option = gets.chomp

#Ask them for password
puts "Please enter the password: "
password = gets.chomp

#Conduct operation & print result
if option == "e" || option == "E"
  puts "The encrypted password is:"
  puts encrypt(password)
elsif option == "d" || option == "D"
  puts "The decrypted password is:"
  puts decrypt(password)
else
  puts "Please enter 'e' or 'd'."
end






