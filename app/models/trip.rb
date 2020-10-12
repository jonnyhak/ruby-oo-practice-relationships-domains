class Trip
    attr_accessor :listing, :guest  

    @@trips = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest 
        @@trips << self
    end

    def self.all
        @@trips 
    end

end