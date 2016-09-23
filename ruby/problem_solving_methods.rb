#Array Search
#Go through each element in array
#Check if the element is equal to what we are searching for
# => If equals, return index
# => Else, continue
#If reach the end, return nil

arr_test = [42, 89, 23, 1]

def search_array(arr, element)
  index = 0

  arr.each do |x|
    if element == x
      return index
    else
      index += 1
    end
  end

  return nil
end

#Fibonacchi Numbers
#define initial 2 elements: 0 and 1 as a and b
#define blank array
# a = 0
# b = 1
# c = a+b = 1
# [0,1,1]
# [a,b,c]
# [ ,a,b,c]
#n.times (loop)
# => insert c (c=a+b) into array
# => a = b
# => b = c

def fib(n) #n indicates # of elements we want in array
  a = 0
  b = 1
  fib_arr = []
  #loop starts iff n >= 1, but x starts from 0 (when n=1, x=0; n=2, x=0,1)
  n.times do |x| 
    if x == 0
      fib_arr << a
    elsif x == 1
      fib_arr << b
    else
      c = a+b #c is the new fib # we are generating
      fib_arr << c
      a = b
      b = c
    end
  end
  return fib_arr
end

# def fib_alt(n)
#   a = 0
#   b = 1
#   arr = []
#   index = 0

#   while index < n
#     if n == 0
#       break
#     end

#     if index == 0
#       arr << a
#     elsif index == 1
#       arr << b
#     else
#       c = a + b
#       arr << c
#       a = b
#       b = c
#     end
#     index += 1
#   end

#   return arr
# end

#Sorting
# Start with first element

# Loop through Array length - 1 times
  # Compare first and second element
  # => If first is greater than second, swap
  # => Else, leave it
  # Compare second and third element
  # => Loop...Until reach the end

def bubble_sorting(arr)
  # Get length for array(n) to decide # of loops
  length = arr.length

  # Loop through entire array n-1 times since each loop will create a
  # fixed element at the end of array, after n-1 elements
  # become fixed, the last element will be fixed, too
  (length-1).times do

    #Loop used to compare each two elements in the array, starting from
    #first two elements and end with last two elements of array 
    (length-1).times do |x|
      #Get the value of the two elements we are comparing from array
      element1 = arr[x]
      element2 = arr[x+1]
      #Compare values and swap if needed
      if element1 > element2
        arr[x] = element2
        arr[x+1] = element1
      end
    end

  end

  return arr
end




