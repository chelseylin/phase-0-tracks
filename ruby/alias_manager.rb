while true
  #Input Real Name
  puts "Please Enter the Name You Wish to Change:"
  real_name = gets.chomp

  #Check for 'Quit'
  if real_name == 'quit'
    break
  end
  
  #Create Fake Name
  # => Swap First and Last Name
  word_array = real_name.split(' ')
  fake_name = word_array[1] + ' ' + word_array[0]
  char_array = fake_name.downcase.chars

  # => Change Vowels to Next
  vowel_ring = "aeiou"
  char_array.map! do |char|
    index = vowel_ring.index(char)
    if index != nil
      vowel_ring[(index+1)%5]
    else
      char
    end
  end

  # => Change Consonants to Next
  consonant_ring = "bcdfghjklmnpqrstvwxyz"
  char_array.map! do |char|
    index = consonant_ring.index(char)
    if index != nil
      consonant_ring[(index+1)%21]
    else
      char
    end
  end

  #Print Fake Name
  fake_name = char_array.join('')
  fake_name = fake_name.split(' ').map(&:capitalize).join(' ')
  puts fake_name
end