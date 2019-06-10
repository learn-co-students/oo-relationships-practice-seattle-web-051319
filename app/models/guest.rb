class Guest


	attr_reader :guest_name

	@@all =[]

	def initialize(guest_name)
		@guest_name = guest_name
		@@all << self
	end

	def self.all
		@@all
	end

	def trips
		Trip.all.select do |x|
			x.guest == self
			# binding.pry
			# x.location# == self
		end
	end

	def listings
		trips.map do |x|
			# binding.pry
			x.listing
		end
	end

	def trip_count
		trips.count
	end


	def self.pro_traveller
		@@all.select do |x|
			x.trip_count > 1
		end
	end


	def self.find_all_by_name(name)
			@@all.select do |x|
			x.guest_name.downcase == name.downcase
			# binding.pry
			# x
		end	

	end



























end
