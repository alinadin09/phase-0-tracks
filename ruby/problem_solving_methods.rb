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

def fib(number)

  
(number-2).times do
  
  fib_group = [0, 1]
    
    placeholder = 0 
    while placeholder < fib_group.length  
         
      sum_of_previous_two = fib_group[-1] + fib_group[-2]
      fib_group << sum_of_previous_two
        placeholder += 1
      
      end
  
end

p fib_group

end


p fib(6)