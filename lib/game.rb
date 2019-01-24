class Game

attr_reader :player1, :player2, :play_order, :turn_number

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_number = 1
    @play_order = [@player1, @player2]
  end

  def attack(player)
    player.receive_damage
  end

  def increment_turn
    @turn_number += 1
  end

  def switch_player
    @play_order.reverse!
  end

end
