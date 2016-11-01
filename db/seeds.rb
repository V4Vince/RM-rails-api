# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


prop1 = Building.create("building_name" => "Stevens St", "address" => "2500 Fake St", "total_units" => "3", "current_insurance" => "2000", "current_taxes" => "2000", "user_id" => User.first.id);
