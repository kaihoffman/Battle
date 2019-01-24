class Player
  attr_reader :player_name, :hitpoints
  def initialize(player_name, hitpoints = 100)
    @player_name = player_name
    @hitpoints = hitpoints
  end

  def name
    @player_name
  end

  def receive_damage
    @hitpoints -= 10
  end
end
