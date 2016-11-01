# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##BUILDINGS#########

# prop1 = Building.create("building_name" => "Stevens St", "address" => "2500 Fake St", "total_units" => "3", "current_insurance" => "2000", "current_taxes" => "2000", "user_id" => User.first.id);
#
# prop2 = Building.create("building_name" => "Branch St", "address" => "540 MoreFake St", "total_units" => "2", "current_insurance" => "2500", "current_taxes" => "2500", "user_id" => User.first.id);
#
# prop3 = Building.create("building_name" => "Woburn St", "address" => "30 Faker St", "total_units" => "", "current_insurance" => "2500", "current_taxes" => "", "user_id" => User.first.id);

##UNITS###########

# unit1 = Unit.create("unit_num" => "12A", "building_id" => Building.first.id);
unit2 = Unit.create("unit_num" => "12B", "building_id" => Building.first.id);

unit3 = Unit.create("unit_num" => "1", "building_id" => Building.last.id);
unit4 = Unit.create("unit_num" => "2", "building_id" => Building.last.id);
