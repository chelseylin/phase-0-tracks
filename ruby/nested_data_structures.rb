apartment = {
  first_floor: {
    first_room: {
      model: "studio",
      residents: ["Jerry"]
    },
    second_room: {
      model: "1b1b",
      residents: ["Chelsey", "MN"]
    }
  },
  second_floor: {
    first_room: {
      model: "1b1b",
      residents: ["Wen", "Henry"]
    },
    second_room: {
      model: "studio",
      residents: []
    }
  },
  third_floor: {
    first_room: {
      model: "2b2b",
      residents: ["Petter", "Jane"]
    },
    second_room: {
      model: "2b1b",
      residents: ["JT", "Joshua"]
    }
  }
}

p apartment

puts "Here are the residents in Apt 101:"
puts apartment[:first_floor][:first_room][:residents]

puts "Here is the model of Apt 302:"
puts apartment[:third_floor][:second_room][:model]

puts "Here are the residents in Apt 202:"
puts apartment[:second_floor][:second_room][:residents]

puts "Laura is moving into Apt 202."
apartment[:second_floor][:second_room][:residents] << "Laura"

puts "Here are the residents in Apt 202:"
puts apartment[:second_floor][:second_room][:residents]