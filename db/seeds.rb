# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

CSV.foreach("db/csv/facility_sample.csv", headers: true) do |row|
    facility = Facility.new
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
    facility.save
end

CSV.foreach("db/csv/category.csv", headers: true) do |row|
    category = Category.new
    category.name = row['name']
    category.save
end

CSV.foreach("db/csv/facility_category.csv", headers: true) do |row|
    facility_category = FacilityCategory.new
    facility_category.facility_id = row['facility_id']
    facility_category.category_id = row['category_id']
    facility_category.save
end


CSV.foreach("db/csv/event.csv", headers: true) do |row|
    event = Event.new
    event.name = row['name']
    event.description = row['description']
    event.day = row['day']
    event.facility_id = row['facility_id']
    event.save
end