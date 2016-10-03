load 'program.rb'

test_game = Hangman.new("baba")
test_game.display
test_game.turn("a")
test_game.display
puts test_game.check
test_game.turn("b")
test_game.display
puts test_game.check