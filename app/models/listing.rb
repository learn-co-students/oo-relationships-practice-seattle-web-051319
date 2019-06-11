require 'pry'

class Listing
attr_reader :city
@@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    trips.collect do |trip|
      trip.guest
    end
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    self.all.find do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    self.all.select do |listing|
      listing.trip_count > 1
    end
  end



end
