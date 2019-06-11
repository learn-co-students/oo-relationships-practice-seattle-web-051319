class Passenger
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def total_distance
    total = 0
    passenger.collect do |x|
      total += x.distance
    end
    total
  end

  def self.premium_members
    self.all.select do |passenger|
      passenger.total_distance > 100
    end
  end


end
