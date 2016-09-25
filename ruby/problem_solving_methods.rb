# Release 0

def search_array(array, x)
    placeholder = 0
      while placeholder < array.length  
        if array[placeholder] != x
          placeholder += 1
        elsif array[placeholder] == x
          return array[placeholder]
        else
          return nil
        end
      end 

end

trial = [1, 2, 3, 4, 70]

p search_array(trial, 70)

# Releae 1:

def fibonacci(number)

fib_group = [0, 1]
   
  (number-2).times do
    sum_of_previous_two = fib_group[-1] + fib_group[-2]
    fib_group << sum_of_previous_two
    end 
    
 p fib_group

end

one_hundred = fib(100)
p one_hundred[-1]

# sorting method
# method takes in a digit x and analyzes the digit and stores it in an array, putting it in a proper place where
# each element is sorted from least to greatest. This is done by:
  # IF digit at end is greatest, it stays there.
  # ELSIF digit at end is more than x, move it further up front till the digit on its
  # left is less than x

def sorting(arr, x)
  arr << x  
  index = 0
  n = arr.length
  
  while index < n
    (n-1).times do |i|
      if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      end
      
    end
    index += 1
    
  end 
  p arr
  
end

group = [1, 0, 0, 10, 3]
sorting(group, 2)



