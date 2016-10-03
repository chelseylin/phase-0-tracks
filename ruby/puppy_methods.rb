class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    dog_year = human_age / 7
  end

  def chasing_tail
    puts "*chasing tail*"
  end

end

test = Puppy.new
test.fetch("ball")
test.speak(5)
test.roll_over
puts test.dog_years(14)
test.chasing_tail