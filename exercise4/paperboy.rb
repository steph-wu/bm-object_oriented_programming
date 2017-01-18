class Paperboy

  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name, experience, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

end
