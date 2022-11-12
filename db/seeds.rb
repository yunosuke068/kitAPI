# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

list = []
CSV.foreach("db/csv/facility_sample.csv", headers: true) do |row|
    facility = Facility.find_by(facility_id: row['id']) || Facility.new
    facility.name = row['name']
    facility.map_url = row['map_url']
    facility.business_hour = row['business_hour']
    facility.holiday = row['holiday']
    facility.postcode = row['postcode']
    facility.address = row['address']
    facility.tel = row['tel']
    facility.mail = row['mail']
    facility.url = row['url']
    facility.instagram = row['instagram']
    facility.settlement = row['settlement']
    facility.facility_id = row['id']

    facility.save

end
