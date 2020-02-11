class WorldCup
  attr_reader :year, :teams

  def initialize(year_parameter, teams_parameter)
    @year = year_parameter
    @teams = teams_parameter
  end
end
