require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("noah")
p2 = Passenger.new("steve")
p3 = Passenger.new("david")

d1 = Driver.new("carlos")
d2 = Driver.new("antonio")
d3 = Driver.new("coco")

r1 = Ride.new(d1, p2, 100.0)
r2 = Ride.new(d2, p1, 9.0)
r3 = Ride.new(d1, p2, 130.0)
r4 = Ride.new(d2, p1, 10.0)

p2.drivers
p2.rides
d1.rides

Passenger.premium_members
Driver.mileage_cap(50.0)

r1.average_distance
p1.total_distance

Pry.start
