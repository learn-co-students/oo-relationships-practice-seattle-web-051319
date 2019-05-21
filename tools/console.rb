require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Susan")
p2 = Passenger.new("Marc")

d1 = Driver.new("Todd")
d2 = Driver.new("Holly")

r1 = Ride.new(p1, d1, 20.0)
r2 = Ride.new(p2, d1, 35.0)
r3 = Ride.new(p1, d2, 15.0)

# l1 = Listing.new("Seattle")
# l2 = Listing.new("San Fransisco")
#
# g1 = Guest.new('bill')
# g2 = Guest.new('carmen')
#
# t1 = Trip.new(g1, l2)
# t2 = Trip.new(g2, l1)
# t3 = Trip.new(g2, l2)

Pry.start
