require('minitest/autorun')
require('minitest/rg')
require_relative('../classes')


class TestSportsTeam < MiniTest::Test
  
  def setup
    @team = SportsTeam.new(['Al', 'Bob', 'Jon'], 'Stuart')
  end

  def test_players
    assert_equal(['Al', 'Bob', 'Jon'], @team.name_array)
  end

  def test_coach
    assert_equal('Stuart', @team.coach)
  end

  def test_set_coach_name
    @team.coach = "Barry"
    assert_equal("Barry", @team.coach)
  end

  def test_set_add_name
    @team.add_name("Dean")
    assert_equal(['Al', 'Bob', 'Jon', 'Dean'], @team.name_array)
  end

  def test_check_name?
    result = @team.check_name?("Al")
    assert_equal(true, result)
  end

  def test_add_points
    result = @team.add_points("win")
    assert_equal(1, result)
  end

end
