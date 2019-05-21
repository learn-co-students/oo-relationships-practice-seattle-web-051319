class Ride
 attr_reader :passenger, :driver
 attr_accessor :distance
  @@all = []
 def initialize(passenger, driver, distance=0.0)
   @passenger = passenger
   @driver = driver
   @distance = distance
   @@all << self
 end

 def self.all
   @@all
end

end
