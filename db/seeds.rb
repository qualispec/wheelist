# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_1 = User.create!(user_name: 'qualispec', email: 'vhchang@gmail.com', 
						 					password: 'asdfasdf', password_confirmation: 'asdfasdf')

wheel_1 = WheelMfg.create!(mfg: '949 Racing')
wheel_2 = WheelMfg.create!(mfg: 'Volk Racing')

wheel_model_1 = wheel_1.wheel_models.create!(model: '6UL')

wheel_model_1_size_1 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 7.5)
wheel_model_1_size_2 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 8)
wheel_model_1_size_3 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 9)

wheel_model_1_offset_1 = wheel_model_1.wheel_offsets.create!(offset: 36)

wheel_model_1_color_1 = wheel_model_1.wheel_colors.create!(paint_name: 'Silver',
																													 color: 'Silver')
wheel_model_1_color_2 = wheel_model_1.wheel_colors.create!(paint_name: 'Black',
																													 color: 'Black')
wheel_model_1_color_3 = wheel_model_1.wheel_colors.create!(paint_name: 'Nickel',
																													 color: 'Chrome')
wheel_model_1_color_4 = wheel_model_1.wheel_colors.create!(paint_name: 'Matte Bronze',
																													 color: 'Bronze')

# wheel_silver =			 WheelColor.create!(paint_name: 'Silver', color: 'Silver')
# wheel_black = 			 WheelColor.create!(paint_name: 'Black', color: 'Black')
# wheel_nickel =			 WheelColor.create!(paint_name: 'Nickel', color: 'Chrome')
# wheel_matte_bronze = WheelColor.create!(paint_name: 'Matte Bronze', color: 'Bronze')

#-------------------------------------------------------------------------------

car_mfg_1 = CarMfg.create!(mfg: 'Mazda')

car_model_1 = car_mfg_1.car_models.create!(year: 1993, model: 'Miata NA6')
car_model_2 = car_mfg_1.car_models.create!(year: 1997, model: 'Miata NA8')
car_model_3 = car_mfg_1.car_models.create!(year: 2005, model: 'Miata NB')

black_cherry_mica = 		CarColor.create!(paint_name: 'Black Cherry Mica',	 
																			    		color: 'Black')
black_mica = 						CarColor.create!(paint_name: 'Black Mica',
																	 						color: 'Black')
blazing_yellow_mica =   CarColor.create!(paint_name: 'Blazing Yellow Mica', 
																							color: 'Yellow')
brilliant_black =		    CarColor.create!(paint_name: 'Brilliant Black', 		 
																							color: 'Black')
british_racing_green =  CarColor.create!(paint_name: 'British Racing Green', 
																							color: 'Green')
classic_red = 				  CarColor.create!(paint_name: 'Classic Red', 			 	 
																							color: 'Red')
crystal_blue_metallic = CarColor.create!(paint_name: 'Crystal Blue Metallic',
																							color: 'Blue')
crystal_white  = 				CarColor.create!(paint_name: 'Crystal White', 			 
																							color: 'White')
emerald_mica  = 				CarColor.create!(paint_name: 'Emerald Mica',	 			 
																							color: 'Green')
evolution_orange_mica = CarColor.create!(paint_name: 'Evolution Orange Mica',
																							color: 'Orange')
garnet_red_mica = 			CarColor.create!(paint_name: 'Garnet Red Mica',			 
																							color: 'Red')
highlight_silver_metallic = CarColor.create!(paint_name: 'Highlight Silver Metallic', 
																							color: 'Silver')
laguna_blue_metallic =  CarColor.create!(paint_name: 'Laguna Blue Metallic', 
																							color: 'Blue')
laser_blue_mica = 			CarColor.create!(paint_name: 'Laser Blue Mica',		 
																							color: 'Blue')
lava_orange = 					CarColor.create!(paint_name: 'Lava Orange',				 
																							color: 'Orange')
mahogany_mica = 				CarColor.create!(paint_name: 'Mahogany Mica', 			 
																							color: 'Red')
marina_green_mica =			CarColor.create!(paint_name: 'Marina Green Mica',				 
																							color: 'Green')
mariner_blue = 					CarColor.create!(paint_name: 'Mariner Blue', 			 
																							color: 'Blue' )
merlot_mica = 					CarColor.create!(paint_name: 'Merlot Mica',				 
																							color: 'Red')
midnight_blue_mica = 		CarColor.create!(paint_name: 'Midnight Blue Mica',	 
																							color: 'Blue')
montego_blue_mica = 		CarColor.create!(paint_name: 'Montego Blue Mica',	 
																							color: 'Blue')
nordic_green_mica = 		CarColor.create!(paint_name: 'Nordic Green Mica',	 
																							color: 'Green')
pure_white = 						CarColor.create!(paint_name: 'Pure White',		 			 
																							color: 'White')
razor_blue_metallic = 	CarColor.create!(paint_name: 'Razor Blue Metallic', 
																							color: 'Blue')
sapphire_blue = 				CarColor.create!(paint_name: 'Sapphire Blue', 			 
																							color: 'Blue')
silver_stone_metallic = CarColor.create!(paint_name: 'Silver Stone Metallic',
																							color: 'Silver')
splash_green_mica = 		CarColor.create!(paint_name: 'Splash Green Mica',	 
																							color: 'Green')
starlight_mica = 				CarColor.create!(paint_name: 'Starlight Mica',			 
																							color: 'Green')
strato_blue_mica = 			CarColor.create!(paint_name: 'Strato Blue Mica',		 
																							color: 'Blue')
sunburst_yellow = 			CarColor.create!(paint_name: 'Sunburst Yellow',		 
																							color: 'Yellow')
sunlight_silver_metallic = CarColor.create!(paint_name: 'Sunlight Silver Metallic', 
																							color: 'Silver')
titanium_gray_metallic = CarColor.create!(paint_name: 'Titanium Gray Metallic', 
																							color: 'Gray')
twilight_blue_mica = 		CarColor.create!(paint_name: 'Twilight Blue Mica',			 
																							color: 'Blue' )
velocity_red = 					CarColor.create!(paint_name: 'Velocity Red',				 
																							color: 'Red')
vivid_yellow = 					CarColor.create!(paint_name: 'Vivid Yellow',				 
																							color: 'Yellow')
white = 								CarColor.create!(paint_name: 'White',							 
																							color: 'White' )


# car_model_1_color_1 = car_model_1.car_colors.create!(paint_name: 'Brilliant Black',
# 																										 color: 'Black')
# car_color_option_1 = car_model_1.car_color_options.create!(car_color_id: car_color_1.id)

miata_na6_colors = [brilliant_black, british_racing_green, classic_red, crystal_white,
									  mariner_blue, silver_stone_metallic, sunburst_yellow]

miata_na8_colors = [brilliant_black, classic_red, laguna_blue_metallic, marina_green_mica, 
										merlot_mica, montego_blue_mica, starlight_mica, twilight_blue_mica, white]

miata_nb_colors = [black_cherry_mica, black_mica, blazing_yellow_mica, brilliant_black, 
									 british_racing_green, classic_red, crystal_blue_metallic, emerald_mica, 
									 evolution_orange_mica, garnet_red_mica, highlight_silver_metallic, 
									 laser_blue_mica, lava_orange, mahogany_mica, midnight_blue_mica,
									 nordic_green_mica, pure_white, razor_blue_metallic, sapphire_blue, 
									 splash_green_mica, strato_blue_mica, sunlight_silver_metallic, 
									 titanium_gray_metallic, twilight_blue_mica, velocity_red, 
									 vivid_yellow, white]

miata_na6_colors.each do |color|
	car_model_1.car_colors << color
end

miata_na8_colors.each do |color|
	car_model_2.car_colors << color
end

miata_nb_colors.each do |color|
	car_model_3.car_colors << color
end

image_1 = Image.create!(url: 'http://i643.photobucket.com/albums/uu157/DoubleO86/6UL8pmpass.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_1 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_1.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# wheel_tag_1 = WheelTag.create!(
# 									:image_id => image_1.id,
# 									:wheel_model_id => wheel_model_1.id
# 									:wheel_size_id => wheel_model_1_size_2.id
# 									:wheel_offset_id => wheel_model_1_offset_1.id
# 									:wheel_color_id => w)

# 15x8, matte_bronze

image_2 = Image.create!(url: 'http://i643.photobucket.com/albums/uu157/DoubleO86/6UL8pmdriver.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_2 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_2.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_3 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181277-2/P6184374.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_3 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_3.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_4 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181280-2/P6184375.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_4 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_4.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_5 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_5 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_5.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

# 15x8, nickel

image_6 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata3.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_6 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_6.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

# 15x8, nickel

image_7 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata2.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_7 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_7.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

# 15x8, nickel

image_8 = Image.create!(url: 'http://www.949racing.com/genii/15x8_6ULN_KW_1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_8 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_8.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

# 15x8, nickel

image_9 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181289-2/P6214383.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_9 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_9.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_10 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181301-2/P6214390.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_10 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_10.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_11 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181310-2/P6214396.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_11 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_11.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_12 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181307-2/P6214395.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_12 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_12.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_13 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181304-2/P6214391.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_13 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_13.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# 15x8, matte_bronze

image_14 = Image.create!(url: 'http://i81.photobucket.com/albums/j221/cococarbine/IMG_1917.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_14 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_14.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

# 15x8, nickel

image_15 = Image.create!(url: 'http://i81.photobucket.com/albums/j221/cococarbine/IMG_1918.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_15 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_15.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

# 15x8, nickel

image_16 = Image.create!(url: 'http://chows.smugmug.com/photos/574274739_rQcC6-L.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_16 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_16.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

# 15x9, nickel

image_17 = Image.create!(url: 'http://chows.smugmug.com/photos/574238810_G9Pjx-L-1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_17 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_17.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

# 15x9, nickel

image_18 = Image.create!(url: 'http://chows.smugmug.com/photos/574240232_jeWEj-L.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_18 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_18.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

# 15x9, nickel

image_19 = Image.create!(url: 'http://i514.photobucket.com/albums/t346/84im2008/100_2755.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_19 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_19.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Marina Green Mica').first.id)

# 15x8, nickel

image_20 = Image.create!(url: 'http://i514.photobucket.com/albums/t346/84im2008/100_2761.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_20 = CarTag.create!(
									:user_id => user_1.id, 
									:image_id => image_20.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Marina Green Mica').first.id)

# 15x8, nickel
























