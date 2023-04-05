require './game'
require './player'
require './question'
require './scoreboard'

player1 = Player.new("John")
player2 = Player.new("Cena")

game = Game.new(player1, player2)

game.start_game