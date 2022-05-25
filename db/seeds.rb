# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# airport=['SFO','NYC','ARC','TPM','SRF','MRF','REL','ATT','TFT','LCD']
# airport.each do |x|
#     Airport.create(code: x)
# end


 Flight.create( from_airport_id: 2, to_airport_id: 1,start: DateTime.now+1,duration: 3)
 Flight.create(from_airport_id:  2, to_airport_id: 3,start:  DateTime.now+2,duration: 4)
 Flight.create( from_airport_id: 2, to_airport_id: 4,start: DateTime.now+3,duration: 3)
 Flight.create( from_airport_id: 2, to_airport_id: 5,start: DateTime.now+3,duration: 4)
 Flight.create( from_airport_id: 2, to_airport_id: 6,start: DateTime.now+4,duration: 5)
 Flight.create( from_airport_id: 2, to_airport_id: 7,start: DateTime.now+4,duration: 8)
 Flight.create( from_airport_id: 2, to_airport_id: 8,start: DateTime.now+5,duration: 3)
 Flight.create( from_airport_id: 2, to_airport_id: 9,start: DateTime.now+5,duration: 5)
 Flight.create( from_airport_id: 2, to_airport_id: 10,start: DateTime.now+1,duration: 3)
