#Ask for number of employees to process:
puts "Please input how many employees you want to process:"
number = gets.chomp.to_i

#Use while loop to process each employee
while number != 0
  result = "Results inconclusive."

  #Get Name
  puts "What is your name?"
  name = gets.chomp

  #Get Age and YOB
  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_of_birth = gets.chomp.to_i

  #Age Test
  if age == (2016 - year_of_birth)
    age_test = true
  else
    age_test = false
  end

  #Garlic Test
  puts "Do you like garlic bread? (y/n)"
  garlic = gets.chomp

  if garlic == "y"
    garlic_test = true
  else
    garlic_test = false
  end

  #Insurance Test
  puts "Are you interested in health insurance? (y/n)"
  insurance = gets.chomp

  if insurance == "y"
    insurance_test = true
  else
    insurance_test = false
  end

  #Allergies Test
  allergy_test = false
  while true
    puts "List all things you are allergic to one by one, and type 'done' when finished."
    allergy = gets.chomp
    if allergy == "done"
      break
    elsif allergy == "sunshine"
      allergy_test = true
      break
    else
    end
  end

  #Detection Logic
  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  elsif allergy_test
    result = "Probably a vampire."
  elsif !age_test
    if !garlic_test && !insurance_test
      result = "Almost certainly a vampire."
    elsif !garlic_test || !insurance_test
      result = "Probably a vampire."
    end
  else
    if garlic_test || insurance_test
      result = "Probably not a vampire."
    end
  end

  #Print Result
  puts "#{result}"
  number -= 1
end

puts "All employees processed."
  