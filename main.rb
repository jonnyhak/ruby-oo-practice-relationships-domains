require_relative './app/models/listing'
require_relative './app/models/trip'
require_relative './app/models/guest'

penthouse = Listing.new("Penthouse", "Miami")
beach = Listing.new("Beach", "Miami")
bay = Listing.new("Bay", "Miami")
city = Listing.new("City", "NYC")

tommy = Guest.new("Tommy")
jessica = Guest.new("jessica")

vacation1 = Trip.new(penthouse, tommy)
vacation2 = Trip.new(penthouse, jessica)
vacation3 = Trip.new(beach, jessica)
vacation4 = Trip.new(bay, jessica)
vacation5 = Trip.new(city, jessica)



# puts Guest.all
# puts Trip.all
# puts Listing.all

# puts Listing.find_all_by_city("NYC")

puts Listing.most_popular.name

