
class Game
  attr_accessor :player_one_choice, :computer


  puts "Care for a game of Rochambeau?"

    def play
      re_match = true
      while re_match
      selection = %w(rock paper scissors)
      puts "Rock, Paper or Scissors?"
      self.player_one_choice = gets.chomp.downcase
      self.computer = selection.sample.downcase
      until selection.include? player_one_choice
        puts "Please select Rock, Paper or Scissors"
        self.player_one_choice = gets.chomp.downcase
      end

      if player_one_choice == computer
        puts "Draw Game"
      elsif player_one_choice == "rock" && computer == "scissors"
        puts "Player:#{player_one_choice} vs Computer:#{computer}-----PLAYER WINS"

      elsif player_one_choice == "scissors" && computer == "paper"
        puts "Player:#{player_one_choice} vs Computer:#{computer}-----PLAYER WINS"

      elsif player_one_choice == "paper" && computer == "rock"
        puts "Player:#{player_one_choice} vs Computer:#{computer}-----PLAYER WINS"

      elsif computer == "rock" && player_one_choice == "scissors"
        puts "Computer:#{computer} vs Player:#{player_one_choice}-----CPU WINS"

      elsif computer == "scissors" && player_one_choice == "paper"
        puts "Computer:#{computer} vs Player:#{player_one_choice}-----CPU WINS"

      elsif computer == "paper" && player_one_choice == "rock"
        puts "Computer:#{computer} vs Player:#{player_one_choice}-----CPU WINS"
      end
      puts "Rematch (y/n)?"
      re_match = gets.chomp.downcase == "y"
    end
  end
end

game = Game.new
game.play
