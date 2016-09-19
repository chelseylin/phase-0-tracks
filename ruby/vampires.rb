puts "Please input how many employees you want to process:"
number = gets.chomp.to_i

while number != 0
  result = "Results inconclusive."

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_of_birth = gets.chomp.to_i

  if age == (2016 - year_of_birth)
    age_test = true
  else
    age_test = false
  end

  puts "Do you like garlic bread? (y/n)"
  garlic = gets.chomp

  if garlic == "y"
    garlic_test = true
  else
    garlic_test = false
  end

  puts "Are you interested in health insurance? (y/n)"
  insurance = gets.chomp

  if insurance == "y"
    insurance_test = true
  else
    insurance_test = false
  end

  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  elsif !age_test
    if !garlic_test && !insurance_test
      result = "Almost certainly a vampire."
    elsif !garlic_test || !insurance_test
      result = "Probably a vampire"
    end
  else
    if garlic_test || insurance_test
      result = "Probably not a vampire."
    end
  end

  puts "#{result}"
  number -= 1
end

puts "All employees processed."
  