class Listing 

	attr_accessor :location

	@@all =[]

	def initialize(location)
		@location = location
		@@all << self
	end

	def self.all
		@@all
	end

	def trips
		Trip.all.select do |x|
			x.listing == self
		end
	end

	def guests
		trips.map do |x|
			x.guest
		end
	end

	def trip_count
		trips.count
	end

#takes an argument of a city name 
# (as a string) and returns all the 
# istings for that city
	def self.find_all_by_city(city)
		@@all.select do |x|
			x.location.downcase == city.downcase
			# binding.pry
			# x
		end		
	end

# finds the listing that has 
# had the most trips
	def self.most_popular
		most = Hash.new(0)
		Trip.all.each do |x|
		# binding.pry
			most[x.listing] += 1
		end
		# binding.pry
		most.key(most.values.max)
	end



























end