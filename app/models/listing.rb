
class Listing
    
    attr_accessor :name, :city 

    @@listings = []

    def initialize(name, city)
        @name = name 
        @city = city
        @@listings << self
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        trips.count 
    end

    def guests
        guests = trips.map {|trip| trip.guest }
        guests.uniq 
    end

    def self.all
        @@listings
    end

    def self.find_all_by_city(town)
        @@listings.select {|listing| listing.city == town }
    end

    def self.most_popular
        max = 0
        listing = nil

        @@listings.each do |item|
            if item.trip_count > max 
                max = item.trip_count
                listing = item
            end 
        end

        listing
    end



end