class Game

attr_reader :player1, :player2, :turn_number

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_number = 1
  end

  def attack(player)
    player.receive_damage
    increment_turn
  end

  def increment_turn
    @turn_number += 1
  end

end
