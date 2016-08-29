def vampire_intake()
  puts "how many ppl r using this program?"
  users = gets.chomp.to_i
  
(1..users).each do |vampire_intake|
  
  
  puts "Please enter your name:"
  name = gets.chomp
  puts "Please enter how old you are"
  age = gets.chomp.to_i
  puts "Please enter the year you were born"
  dob = gets.chomp.to_i
  puts "Garlic bread? (y/n)"
  gbread = gets.chomp
  puts "Do you want to enroll in health insurance? (y/n)"
  health = gets.chomp

  allergies = ""

  while allergies != "done"
    puts "Do you have any allergies?"
     if allergies == "sunshine"
      allergies_vamp = true
     end
    allergies = gets.chomp
  end
  
  if age = 2016 - dob
    age_is_correct = TRUE
  end
  
  if age != 2016 - dob
    age_is_false = TRUE
  end
  
  if gbread == "y"
    wants_gbread = TRUE
  end
  
 if gbread == "n"
  dnw_gbread = TRUE
 end
 
 if health == "y"
  wants_health = TRUE
 end
 
 if health == "n"
  dnw_health = TRUE
 end
 
  if age_is_correct && (wants_gbread || wants_health)
    puts "Probably not a vampire"
  elsif age_is_false && (dnw_gbread || dnw_health)
    puts "Probably a vampire"
   elsif age_is_false && dnw_gbread && dnw_health
    puts "Almost certainly a vampire"
   elsif (age_is_false || age_is_correct) && (dnw_health || wants_health) && 
    (wants_gbread || dnw_gbread) && (name == "drake cula" || "tu fang")
    puts "Definitely a vampire"
    elsif
    allergies_vamp
    puts "Definitely a vampire!"
   elsif 
   puts "Results inconclusive"
  end
  
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end

vampire_intake()