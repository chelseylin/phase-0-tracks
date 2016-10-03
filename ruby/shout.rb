module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end
end

# puts Shout.yell_happily("Yeah")
# puts Shout.yell_angrily("Hey")