# Method to create a list
# input: string of items separated by spaces, optional default quantity
# steps: 
  # Create an empty hash list
  # Generate an array of items by splitting the string with space
  # set default quantity = 1
  # Iterate through the array list, and add each item-quantity pair into hash list
  # print the list to the console
# output: Hash list

def create_list(str, default_quantity=1)
  list = {}
  item_array = str.split
  item_array.each do |item|
    list[item] = default_quantity
  end
  print_list(list)
  return list
end

# Method to add an item to a list
# input: item name, list, quantity
# steps: 
  # Add item-quantity pair into the list
# output: Hash list

def add_item(item, list, quantity)
  list[item] = quantity
end

# Method to remove an item from the list
# input: item name, list
# steps: 
  # Delete i-q pair from the list using item name as a key
# output: Hash list

def remove_item(item, list)
  list.delete(item)
end

# Method to update the quantity of an item
# input: item name, list, quantity
# steps:
  # Use add method
# output: Hash list

def update_quantity(item, list, quantity)
  add_item(item, list, quantity)
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # Iterate through the hash list
  # puts i-q pair into screen
# output: Hash list

def print_list(list)
  puts "Name \t\t Quantity"
  list.each do |key, value|
    puts "#{key} \t\t #{value}"
  end
end

test_string = "Apple Grape Cabbage"
list_1 = create_list(test_string)

add_item("Tea", list_1, 3)
p list_1

remove_item("Tea", list_1)
p list_1

update_quantity("Apple", list_1, 5)
p list_1
print_list(list_1)