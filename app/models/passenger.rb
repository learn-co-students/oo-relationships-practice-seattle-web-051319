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

    # def drivers
    #     rides = Ride.all.select do |ride|
    #         ride.passenger == self
    #     end
    #     rides.map do |i|
    #         i.driver
    #     end
    # end

    def drivers
        rides.map do |i|
            i.driver
        end 
    end

    def rides   
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def total_distance
        total = 0
        rides.map do |i|
            total += i.distance
        end
        total
    end

    def self.premium_members
        top_passengers = []
        Ride.all.each do |ride|
            if ride.distance > 100
                top_passengers << ride.passenger
            end
        end
        top_passengers
    end


end