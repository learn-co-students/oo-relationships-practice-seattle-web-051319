class Guest

attr_reader :name

 @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def trips
    Trip.all.select {|l| l.guest == self}
  end

  def listings
    trips.map {|t| t.listing}
  end

  def trip_count
    trips.length
  end

  def self.pro_traveller
      @@all.select {|t| t.trip_count >1}
  end

  def self.find_all_by_name(name)
      @@all.find {|g| g.name == name}
    end

  def self.all
    @@all
  end

end
