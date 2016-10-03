#Hang-man Game
#Create a class to store data and methods used by game
# => attributes: if_win, answer, guess_num, letter_available, current
# => initialize: if_win = false, answer 
#                calculate guess_num, letter_avialbe = default alphabet
#                current = blanks
# => method: display -- prints current, guesses_left, letter_available
#            turn -- takes in a letter and calculate all relating
#            check -- check winning status


class Hangman
  attr_reader :if_win
  attr_reader :guess_num

  def initialize(word)
    @if_win = false
    @answer = word
    @guess_num = @answer.length
    @current = []
    @answer.length.times {@current << "_"}
    @letter_available = "abcdefghijklmnopqrstuvwxyz"
  end

  def display
    puts "Current Process: " + @current.join(" ")
    puts "Letters Available: " + @letter_available
    puts "Guesses Left: " + @guess_num.to_s
  end

  def turn(letter)
    correct = false
    if @letter_available.include?(letter)
      index = 0
      @answer.each_char do |char|
        if char == letter
          @current[index] = letter
          correct = true
        end
        index += 1
      end
    end
    @letter_available.delete!(letter)
    @guess_num -= 1
    return correct
  end

  def check
    if @current.join == @answer
      @if_win = true
    end
  end
end