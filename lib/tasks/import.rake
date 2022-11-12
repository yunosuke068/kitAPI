require 'csv'

namespace :import do
    task :insert_csv do
        list = []
        CSV.foreach("db/csv/facility_sample.csv", headers: true) do |row|
            # facility = Facility.find_by(facility_id: row['id']) || Facility.new
            # facility.name = row['name']
            # facility.map_url = row['map_url']
            # facility.business_hour = row['business_hour']
            # facility.save
            list << {
                name: row['name']
            }
        end
        Facility.create!(list)
    end
end
