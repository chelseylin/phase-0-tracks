# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# puts Shout.yell_happily("Yeah")
# puts Shout.yell_angrily("Hey")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :D"
  end

end

class Teacher
  include Shout
end

class Boss
  include Shout
end

teacher = Teacher.new
puts teacher.yell_angrily("Stop cheating")
boss = Boss.new
puts boss.yell_happily("We made it")