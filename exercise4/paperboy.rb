class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    quota = 50 + (@experience / 2)
    @experience += quota
    return quota
  end

end

jim = Paperboy.new("Jim", 0)

puts "week 1"
puts jim.experience
puts jim.quota

puts "week 2"
puts jim.experience
puts jim.quota

puts "week 3"
puts jim.experience
puts jim.quota
