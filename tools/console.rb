require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



#**** AIR BNB ****#
guest1 = Guest.new("Samantha")
guest2 = Guest.new("Joe")
guest3 = Guest.new("Jacob")
guest4 = Guest.new("Sarah")


list1 = Listing.new("seattle")
list2 = Listing.new("Wasilla")
list3 = Listing.new("Portland")
list4 = Listing.new("Portland")


trip1 = Trip.new(list1, guest1)
trip2 = Trip.new(list1, guest2)
trip3 = Trip.new(list2, guest3)
trip4 = Trip.new(list3, guest4)
trip5 = Trip.new(list3, guest1)
trip6 = Trip.new(list3, guest2)


























Pry.start
