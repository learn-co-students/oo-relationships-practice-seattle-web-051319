class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance = 0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def average_distance
        total_distance = 0
        Ride.all.map do |ride|
            total_distance += ride.distance
        end
        total_distance/Ride.all.length
    end 


end