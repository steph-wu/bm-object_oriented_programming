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

  def collect_treasure(amount)
    @gold_coins += amount
    @score += 1 if @gold_coins >= 10
    level_up if @score == 10
  end

end
