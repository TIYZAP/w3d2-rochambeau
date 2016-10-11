
class Game
  attr_accessor :player, :cpu

  def play(draw = 0, rock = 0, paper = 0, scissors = 0)

    1000.times do
      selection = %w(rock paper scissors)
      self.player = selection.sample.downcase
      self.cpu = selection.sample.downcase
    
      if player == cpu
        draw = draw + 1
      elsif cpu == "rock" && player == "scissors"
        rock = rock + 1
      elsif cpu == "scissors" && player == "paper"
        scissors = scissors + 1
      elsif cpu == "paper" && player == "rock"
        paper = paper + 1
      elsif player == "rock" && cpu == "scissors"
        rock = rock + 1
      elsif player == "scissors" && cpu == "paper"
        scissors = scissors + 1
      elsif player == "paper" && cpu == "rock"
        paper = paper + 1
      end
    end

    puts "Here are the results after 1,000 simulations!"
    puts "Draw: #{draw}"
    puts "Rock: #{rock}"
    puts "Paper: #{paper}"
    puts "Scissors: #{scissors}"
  end
end


game = Game.new
game.play
