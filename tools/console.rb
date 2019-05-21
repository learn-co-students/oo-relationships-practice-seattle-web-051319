require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("Seattle")
l2 = Listing.new("San Fransisco")

g1 = Guest.new('bill')
g2 = Guest.new('carmen')

t1 = Trip.new(g1, l2)
t2 = Trip.new(g2, l1)
t3 = Trip.new(g2, l2)

Pry.start
