module Shout
	def yell_angrily(words)
    puts "#{words}!!! :("
  end

  	def yell_happily(words)
  		puts "#{words}, yesssss!!! :-D"
  	end

end

class Butcher
	include Shout
end

class Child
	include Shout
end

tony = Butcher.new
tony.yell_happily("Great meat today")

samantha = Child.new
samantha.yell_angrily("nooooo")