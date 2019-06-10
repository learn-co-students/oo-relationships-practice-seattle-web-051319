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

  def drivers
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def total_distance
    total_distance = 0
    drivers.each do |driver|
      total_distance += driver.distance
    end
    total_distance
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      if driver.total_distance > distance
        driver.name
      end
    end
  end


end
