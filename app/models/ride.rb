class Ride
  attr_reader :passenger, :driver
  attr_accessor :distance
  @@all = []

  def initialize(passenger, driver, distance = 0.0)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = 0
    x = self.all.collect do |ride|
      total_distance += ride.distance
    end
    total_distance/x.length
  end


end
