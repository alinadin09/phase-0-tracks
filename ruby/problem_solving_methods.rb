# Alina Din
# Juan Carlos Field

# Release 0

arr = [1, 2, 3, 4, 5]

def search_array(arr, x)
  puts arr.at(x)
end 

search_array(arr, 34)

# Release 1

def fib(n)
   (n-2).times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
 end
 fib(100)

 # Release 2

 def bubble_sort(array) # defining a method name of the method(bubble_sort),and array is the argument.
  n = array.length # number of elements within the array.
  loop do # Repeats something; a pattern.
    swapped = false # assign the value to false until condition is met. 

    (n-1).times do |i| # the number of elements bfore it goes to another array.
      if array[i] > array[i+1] # will move to the next element in the array until it gets sorted out.
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped # a way to stop infinite loop. 
  end

  array
end

array = [5, 100, 7, 1, 3, 2] # example array.
bubble_sort(array) #Calling the method.