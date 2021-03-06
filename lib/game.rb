class Game
  attr_reader :player_1, :player_2, :choice_by_player, :choice_by_pc

  def initialize(player_1, player_2 = "PC")
    @player_1 = player_1
    @player_2 = player_2
    @to_win_logic = {"Rock"=>"Scissors",
                  "Paper"=>"Rock",
                  "Scissors"=>"Paper"}
    @choice_by_player = choice_by_player
    @choice_by_pc = choice_by_pc

  end

  def fight(string)
    @choice_by_player = string
    @choice_by_pc = rand_pick
    check_winner(@choice_by_player, @choice_by_pc)
  end

  def check_winner(choice_by_player, choice_by_pc)
    return "Congrats! You win!" if @to_win_logic[choice_by_player] == choice_by_pc
    return "You lose. Don't give up! :)" if @to_win_logic[choice_by_pc] == choice_by_player
    "It is a draw. Let's try again!"
  end

  def rand_pick
    ["Rock", "Paper", "Scissors"].sample
  end

end
