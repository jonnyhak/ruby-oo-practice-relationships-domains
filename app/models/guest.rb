class Guest
    attr_accessor :name

    @@guests = []

    def initialize(name)
        @name = name
        @@guests << self 
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end
    
    def listings
        listings = trips.map {|trip| trip.listing }
        listings.uniq
    end

    def trip_count
        trips.count 
    end

    def self.all
        @@guests
    end

    def self.pro_traveller
        @@guests.select {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        @@guests.select {|guest| guest.name == name}
    end



end