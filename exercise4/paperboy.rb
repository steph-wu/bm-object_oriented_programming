class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    quota = 50 + (@experience.to_i / 2)
  end

  def deliver(start_address, end_address)
    if end_address - start_address >= quota
      @earnings += quota * 0.25
      @earnings += (end_address - start_address + 1 - quota) * 0.50
    else
      @earnings += (end_address - start_address + 1) * 0.25
      @earnings -= 2
    end
    @experience += end_address - start_address + 1
    return @earnings
  end

end

jim = Paperboy.new("Jim", 0)

puts jim.quota
puts jim.deliver(101,160)
puts jim.earnings

puts jim.quota
puts jim.deliver(1,75)
puts jim.earnings
