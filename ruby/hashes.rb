#Input Client's Information
puts "What is the Client's name?"
name = gets.chomp

puts "What is his/her age?"
age = gets.chomp.to_i

puts "Does the client have children? (y/n)"
answer = gets.chomp
if answer == "y"
  if_children = true
elsif answer == "n"
  if_children = false
end

puts "What is their choice of decor_theme?"
decor_theme = gets.chomp

#Create & Print Hash Form
client_info = {
  name: name,
  age: age,
  children: if_children,
  decor_theme: decor_theme
}

puts "Here is the client's information: "
p client_info

#Opportunity for Update
puts "Would you like to make any change to input data?
Please enter the key you want to update or 'none' to finish."
key = gets.chomp
if key == 'none'
else
  puts "Please enter the updated information:"
  value = gets.chomp
  key = key.to_sym
end

  # Data Convert
if key == :age
  value = value.to_i
end

if key == :children
  if value == "y"
    value = true
  elsif value == "n"
    value = false
  end
end

client_info[key] = value

#Print Latest Version of Hash
puts "Here is the Information for the Client."
p client_info