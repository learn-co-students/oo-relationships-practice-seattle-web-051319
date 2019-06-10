require_relative '../config/environment.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'

require 'pry'

# def reload
#   load 'config/environment.rb'
# end

g1 = Guest.new("Aliya")
g2 = Guest.new("Philip")
g3 = Guest.new("Rohit")

l1 = Listing.new("Seattle")
l2 = Listing.new("Brooklyn")
l3 = Listing.new("Belize City")

t1 = Trip.new(l2, g1)
t2 = Trip.new(l2, g3)
t3 = Trip.new(l3, g2)
t4 = Trip.new(l1, g2)



Pry.start
0
