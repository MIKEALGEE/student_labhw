class Team

attr_reader :name , :players
attr_accessor :coach


def initialize(team_name, players_array, coach_name)

  @name = team_name
  @players = players_array
  @coach = coach_name

end

def add_player(player)

  @players.push(player)

end

  def find_player(name)

    for player in @players
      if player == name
        return true
      end
    end
    return false
  end




end
