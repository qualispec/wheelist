# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create!(user_name: 'qualispec', email: 'vhchang@gmail.com')

wheel_1 = WheelMfg.create!(mfg: '949 Racing')
wheel_2 = WheelMfg.create!(mfg: 'Volk Racing')

wheel_model_1 = wheel_1.wheel_models.create!(model: '6UL')

wheel_model_1_size_1 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 8)
wheel_model_1_size_2 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 9)

wheel_model_1_offset_1 = wheel_model_1.wheel_offsets.create!(offset: 36)

wheel_model_1_color_1 = wheel_model_1.wheel_colors.create!(paint_name: 'Silver',
																													 color: 'Silver')
wheel_model_1_color_2 = wheel_model_1.wheel_colors.create!(paint_name: 'Black',
																													 color: 'Black')
wheel_model_1_color_3 = wheel_model_1.wheel_colors.create!(paint_name: 'Nickel',
																													 color: 'Chrome')
wheel_model_1_color_4 = wheel_model_1.wheel_colors.create!(paint_name: 'Matte Bronze',
																													 color: 'Bronze')


car_1 = CarMfg.create!(mfg: 'Mazda')

car_model_1 = car_1.car_models.create!(year: 1995, model: 'Miata')
car_model_2 = car_1.car_models.create!(year: 1993, model: 'RX7')

car_model_1_color_1 = car_model_1.car_colors.create!(paint_name: 'Brilliant Black',
																										 color: 'Black')

car_model_1_color_2 = car_model_1.car_colors.create!(paint_name: 'Classic Red',
																										 color: 'Red')
car_model_1_color_3 = car_model_1.car_colors.create!(paint_name: 'Laguna Blue Metallic',
																										 color: 'Blue')
car_model_1_color_4 = car_model_1.car_colors.create!(paint_name: 'Merlot Mica',
																					 					 color: 'Red')
car_model_1_color_1 = car_model_1.car_colors.create!(paint_name: 'Montego Blue',
																										 color: 'Blue')
car_model_1_color_1 = car_model_1.car_colors.create!(paint_name: 'White',
																										 color: 'White')

# car_color_1 = CarColor.create!(paint_name: 'Brilliant Black', 		 color: 'Black')
# car_color_2 = CarColor.create!(paint_name: 'Classic Red', 				 color: 'Red'	 )
# car_color_3 = CarColor.create!(paint_name: 'Laguna Blue Metallic', color: 'Blue' )
# car_color_4 = CarColor.create!(paint_name: 'Merlot Mica', 				 color: 'Red'	 )
# car_color_5 = CarColor.create!(paint_name: 'Montego Blue', 				 color: 'Blue' )
# car_color_6 = CarColor.create!(paint_name: 'White', 							 color: 'White')

# CarColor.create!(paint_name: 'Crystal White', 			 color: 'White')
# CarColor.create!(paint_name: 'Mariner Blue', 				 color: 'Blue' )
# CarColor.create!(paint_name: 'Silver Stone Metallic',color: 'Silver')
# CarColor.create!(paint_name: 'British Racing Green', color: 'Green')
# CarColor.create!(paint_name: 'Sunburst Yellow',			 color: 'Yellow')
# CarColor.create!(paint_name: 'Starlight Mica',			 color: 'Green')
# CarColor.create!(paint_name: 'Marina Green',				 color: 'Green')
# CarColor.create!(paint_name: 'Twilight Blue',				 color: 'Blue' )

# model_1.car_color_option.create!(car_color_1)
# model_1.car_color_option.create!(car_color_2)
# model_1.car_color_option.create!(car_color_3)
# model_1.car_color_option.create!(car_color_4)
# model_1.car_color_option.create!(car_color_5)
# model_1.car_color_option.create!(car_color_6)



