require 'pry'

class Trip
attr_reader :listing, :guest
@@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

  def find_listing
    self.listing
  end

  def find_guest
    self.guest
  end

end
