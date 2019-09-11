class Game

  def initialize
    @opponent_array = ['cat', 'dog', 'human']
    @player_points = 0

def get_opponent
  return @opponent_array[rand(3)]
end

def win_decider(player_choice, computer_choice)
    if player_choice == computer_choice
    puts "it is a draw, nobody wins, no points at all"
    puts "you still have #{@player_points} points"
  elsif player_choice == @opponent_array[0] && computer_choice == @opponent_array[1] || player_choice == @opponent_array[1] && computer_choice == @opponent_array[2] ||
      player_choice == @opponent_array[2] && computer_choice == @opponent_array[0]
      puts "computer wins"
      @player_points -= 1
      puts "you now have #{@player_points} points"
    else puts "you win"
      @player_points += 1
      puts "you have #{@player_points} points"

    end


end


def play
puts "Cat, Dog, Human?"

player_choice = gets.chomp.downcase
computer_choice = get_opponent.downcase
puts "You have chosen #{player_choice}, the computer has chosen #{computer_choice}"

win_decider(player_choice, computer_choice)
play
end

  end

end

Game.new.play
