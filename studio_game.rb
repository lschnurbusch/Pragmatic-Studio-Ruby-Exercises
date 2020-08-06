require_relative 'player'
require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
puts "\n#{knuckleheads.title}"
knuckleheads.load_players(ARGV.shift || "players.csv")

loop do
puts "\nHow many game rounds? ('quit' to exit)"
response = gets.chomp.downcase

    case response
    when /^\d+$/
        knuckleheads.play(response.to_i)
    when 'quit', 'exit'
        knuckleheads.print_stats
        knuckleheads.save_high_scores
        break
    else
        puts "Please enter a number or 'quit'."
    end
end