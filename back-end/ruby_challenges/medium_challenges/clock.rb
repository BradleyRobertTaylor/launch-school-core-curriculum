class Clock

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hour, minute=0)
    new(hour, minute)
  end
end