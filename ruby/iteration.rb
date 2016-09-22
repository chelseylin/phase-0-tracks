def status_method
  puts "The status right now is: good to go!"
yield("Chelsea", "Daniel")
end
status_method {|name1, name2| puts "#{name1} and #{name2} are ready to program!"}
car_array = ["Ford", "GM", "Honda", "Lexus"]
car_hash = {
"Ford" => "USA",
"GM" => "USA",
"Honda" => "Japan",
"Lexus" => "Japan",
}
#Array.each
puts "Original car_array:"
p car_array
car_array.each{|car| puts "I want to drive a #{car}!"}
puts "After car_array:"
p car_array
#Hash.each
puts "Original car_hash:"
p car_hash
car_hash.each {|car,country| puts "I want to drive
a #{car} from #{country}!"}
puts "After car_hash:"
p car_hash
#Array.map!
puts "Original car_array:"
p car_array
car_array.map! do |car| 
  puts "I want to drive a #{car}!"
"Ford" 
end
puts "After car_array:"
p car_array
#Release 2
 arr = [1,2,3,4,5]
 p arr.delete_if {|a| a < 5 }
 arr = [1,2,3,4,5]
 p arr.keep_if {|a| a < 5}
 arr = [1,2,3,4,5]
 p arr.select{|a| a if a.even?}
 arr = [1,2,3,4,5]
 p arr.drop_while {|i| i < 3}
new_hash = {
1 => "1",
2 => "2",
3 => "3",
4 => "4",
5 => "5"
}
new_hash.delete_if {|key, value| key < 5}
p new_hash
new_hash = {
1 => "1",
2 => "2",
3 => "3",
4 => "4",
5 => "5"
}
new_hash.keep_if{|key, value| key < 5}
p new_hash
new_hash = {
1 => "1",
2 => "2",
3 => "3",
4 => "4",
5 => "5"
}
p new_hash.select{|key, value| key if key.even?}