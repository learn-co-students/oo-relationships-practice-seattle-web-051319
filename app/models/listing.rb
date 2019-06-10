class Listing
  attr_reader :city
  attr_accessor :guest
   @@all = []


    def initialize(city)
      @city = city
      @@all << self
    end

    def trips
      Trip.all.select {|trips| trips.listing == self}
    end

    def guests
      trips.collect {|l| l.guest}
    end


    def trip_count
      trips.length
    end

    def self.find_all_by_city(city)
        @@all.find {|c| c.city == city}
    end

    def self.most_popular
        @@all.select {|c| c.trip_count > 1}
      end

    def self.all
      @@all
    end


end
