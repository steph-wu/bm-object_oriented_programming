class Player

  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @lives = lives
    @health_points = health_points
    @score = score
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def do_battle
    if @health_points > 1
      @health_points -= 1
    elsif @lives == 0
      restart
    else
      @health_points = 10
      @lives -= 1
    end
  end

  def level_up
    @lives += 1
  end

end

test = Player.new(10, 1, 2, 5)

puts test.gold_coins
puts test.health_points
puts test.lives
puts test.score

test.do_battle

puts test.gold_coins
puts test.health_points
puts test.lives
puts test.score
