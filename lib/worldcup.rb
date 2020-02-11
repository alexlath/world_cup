class WorldCup
  attr_reader :year, :teams

  def initialize(year_parameter, teams_parameter)
    @year = year_parameter
    @teams = teams_parameter
  end

  def active_players_by_position(position_parameter)
    active_teams = @teams.reject { |team| team.eliminated? }
    active_teams.flat_map { |team| team.players_by_position(position_parameter) }
  end
end
