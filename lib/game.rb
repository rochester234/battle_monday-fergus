require 'player'

class Game

  def attack(player)
    player.deduct_hp
  end

end
