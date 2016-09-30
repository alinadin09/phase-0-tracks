module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + " yippppeeee!!"
  end
end

class Child
	include Shout
end

class Husband
	include Shout
end

child = Child.new
p child.yell_angrily("no")


husband = Husband.new
p husband.yell_happily("wow")