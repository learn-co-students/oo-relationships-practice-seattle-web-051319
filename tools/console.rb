require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/ride.rb'

require 'pry'

########## lyft practice ################

d1 = Driver.new("John")
d2 = Driver.new("Steve")

p1 = Passenger.new("Ix")
p2 = Passenger.new("Cody")

r1 = Ride.new(p1, d1, 5)
r2 = Ride.new(p2, d2, 2)
r3 = Ride.new(p2, d1, 100)











############ airbnb practice ############

# g1 = Guest.new("Aliya")
# g2 = Guest.new("Philip")
# g3 = Guest.new("Rohit")
#
# l1 = Listing.new("Seattle")
# l2 = Listing.new("Brooklyn")
# l3 = Listing.new("Belize City")
#
# t1 = Trip.new(l2, g1)
# t2 = Trip.new(l2, g3)
# t3 = Trip.new(l3, g2)
# t4 = Trip.new(l1, g2)



Pry.start
0
