class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  #---Initialize Method---
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  #---Instance Methods---
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    length = @reindeer_ranking.length
    @reindeer_ranking.delete(reindeer)
    if @reindeer_ranking.length < length
      @reindeer_ranking << reindeer
    end
  end

end

# santa_test = Santa.new
# santa_test.speak
# santa_test.eat_milk_and_cookies("chocolate chip cookie")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

santa_test = Santa.new("female", "asian")
puts santa_test.age
santa_test.celebrate_birthday
puts santa_test.age
puts santa_test.ethnicity
santa_test.gender = "male"
p santa_test
santa_test.get_mad_at("Dancer")
p santa_test