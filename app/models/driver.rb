class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        rides.map do |i|
            i.passenger
        end
    end

    def self.mileage_cap(distance)
        rides_dist = Ride.all.select do |ride|
            ride.distance > distance
        end
        rides_dist.map do |i|
            i.driver
        end
    end



end