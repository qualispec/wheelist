# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create!(user_name: 'qualispec', email: 'vhchang@gmail.com')

Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 8,
						  offset: 36, bolt_pattern: '4x100', color: 'Silver')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 8,
						  offset: 36, bolt_pattern: '4x100', color: 'Black')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 8,
						  offset: 36, bolt_pattern: '4x100', color: 'Nickel')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 8,
						  offset: 36, bolt_pattern: '4x100', color: 'Matte Bronze')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 9,
						  offset: 36, bolt_pattern: '4x100', color: 'Silver')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 9,
						  offset: 36, bolt_pattern: '4x100', color: 'Black')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 9,
						  offset: 36, bolt_pattern: '4x100', color: 'Nickel')
Wheel.create!(mfg: '949 Racing', model: '6UL', diameter: 15, width: 9,
						  offset: 36, bolt_pattern: '4x100', color: 'Matte Bronze')

Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Brilliant Black', color: 'Black')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Classic Red', color: 'Red')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Crystal White', color: 'White')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Mariner Blue', color: 'Blue')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Silver Stone Metallic', color: 'Silver')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1992, 
						official_color: 'Sunburst Yellow', color: 'Yellow')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'Brilliant Black', color: 'Black')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'Classic Red', color: 'Red')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'Laguna Blue Metallic', color: 'Blue')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'Merlot Mica', color: 'Green')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'Montego Blue', color: 'Blue')
Car.create!(mfg: 'Mazda', model: 'Miata', year: 1995, 
						official_color: 'White', color: 'White')


