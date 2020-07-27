require_relative 'player'
require_relative 'die'

module GameTurn
  
  def self.take_turn(player)
    number_rolled = Die.new.number
    case number_rolled
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      when 5..6
        player.w00t
    end
  end
    
end