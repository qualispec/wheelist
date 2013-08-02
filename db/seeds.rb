	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_1 = User.create!(user_name: 'qualispec', email: 'vhchang@gmail.com',
						 					password: 'asdfasdf', password_confirmation: 'asdfasdf')

#-------------------------------------------------------------------------------

wheel_949_racing =  WheelMfg.create!(mfg: '949 Racing')
wheel_advan = 		  WheelMfg.create!(mfg: 'Advan')
wheel_enkei = 		  WheelMfg.create!(mfg: 'Enkei')
wheel_volk_racing = WheelMfg.create!(mfg: 'Volk Racing')
wheel_work = 				WheelMfg.create!(mfg: 'Work')

wheel_6ul = wheel_949_racing.wheel_models.create!(model: '6UL')
wheel_rpf1 = wheel_enkei.wheel_models.create!(model: 'RP-F1')

# wheel_model_1_size_1 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 7.5)
# wheel_model_1_size_2 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 8)
# wheel_model_1_size_3 = wheel_model_1.wheel_sizes.create!(diameter: 15, width: 9)

size_14x7 =  WheelSize.create!(diameter: 14, width: 7)
size_15x7 =  WheelSize.create!(diameter: 15, width: 7)
size_15x75 = WheelSize.create!(diameter: 15, width: 7.5)
size_15x8 =  WheelSize.create!(diameter: 15, width: 8)
size_15x9 =  WheelSize.create!(diameter: 15, width: 9)

offset_23 = WheelOffset.create!(offset: 23)
offset_24 = WheelOffset.create!(offset: 24)
offset_25 = WheelOffset.create!(offset: 25)
offset_26 = WheelOffset.create!(offset: 26)
offset_27 = WheelOffset.create!(offset: 27)
offset_28 = WheelOffset.create!(offset: 28)
offset_29 = WheelOffset.create!(offset: 29)
offset_30 = WheelOffset.create!(offset: 30)
offset_31 = WheelOffset.create!(offset: 31)
offset_32 = WheelOffset.create!(offset: 32)
offset_33 = WheelOffset.create!(offset: 33)
offset_34 = WheelOffset.create!(offset: 34)
offset_35 = WheelOffset.create!(offset: 35)
offset_36 = WheelOffset.create!(offset: 36)

wheel_black  = WheelColor.create!(paint_name: 'Black', color: 'Black')
wheel_matte_bronze = WheelColor.create!(paint_name: 'Matte Bronze', color: 'Bronze')
wheel_nickel = WheelColor.create!(paint_name: 'Nickel', color: 'Chrome')
wheel_silver = WheelColor.create!(paint_name: 'Silver', color: 'Silver')
wheel_white = WheelColor.create!(paint_name: 'White', color: 'White')

# wheel_model_1_offset_1 = wheel_model_1.wheel_offsets.create!(offset: 36)

# wheel_model_1_color_1 = wheel_model_1.wheel_colors.create!(paint_name: 'Silver',
# 																													 color: 'Silver')
# wheel_model_1_color_2 = wheel_model_1.wheel_colors.create!(paint_name: 'Black',
# 																													 color: 'Black')
# wheel_model_1_color_3 = wheel_model_1.wheel_colors.create!(paint_name: 'Nickel',
# 																													 color: 'Chrome')
# wheel_model_1_color_4 = wheel_model_1.wheel_colors.create!(paint_name: 'Matte Bronze',
# 																													 color: 'Bronze')

wheel_6ul_sizes = [size_15x75, size_15x8, size_15x9]
wheel_6ul_offsets = [offset_36]
wheel_6ul_colors = [wheel_black, wheel_matte_bronze, wheel_nickel, wheel_silver]

wheel_6ul_sizes.each do |size|
	wheel_6ul.wheel_sizes << size
end

wheel_6ul_offsets.each do |offset|
	wheel_6ul.wheel_offsets << offset
end

wheel_6ul_colors.each do |color|
	wheel_6ul.wheel_colors << color
end


#-------------------------------------------------------------------------------

car_mfg_1 = CarMfg.create!(mfg: 'Mazda')

car_model_1 = car_mfg_1.car_models.create!(year: 1993, model: 'Miata NA6')
car_model_2 = car_mfg_1.car_models.create!(year: 1997, model: 'Miata NA8')
car_model_3 = car_mfg_1.car_models.create!(year: 2005, model: 'Miata NB')
car_model_4 = car_mfg_1.car_models.create!(year: 2006, model: 'Miata NC')

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

wheel_tag_1 = WheelTag.create!(
									:image_id => image_1.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

# image_2 is dead

# image_2 = Image.create!(url: 'http://i643.photobucket.com/albums/uu157/DoubleO86/6UL8pmdriver.jpg',
# 												caption: 'test caption',
# 												user_id: user_1.id)

# car_tag_2 = CarTag.create!(
# 									:user_id => user_1.id,
# 									:image_id => image_2.id,
# 									:car_model_id => car_model_3.id,
# 	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

# wheel_tag_2 = WheelTag.create!(
# 									:image_id => image_2.id,
# 									:wheel_model_id => wheel_6ul.id,
# 									:wheel_size_id => size_15x8.id,
# 									:wheel_offset_id => offset_36.id,
# 									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_3 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181277-2/P6184374.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_3 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_3.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_3 = WheelTag.create!(
									:image_id => image_3.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_4 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181280-2/P6184375.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_4 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_4.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_4 = WheelTag.create!(
									:image_id => image_4.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_5 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_5 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_5.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_5 = WheelTag.create!(
									:image_id => image_5.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)
# 15x8, nickel

image_6 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata3.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_6 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_6.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_6 = WheelTag.create!(
									:image_id => image_6.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_7 = Image.create!(url: 'http://i442.photobucket.com/albums/qq148/jaymoneill/Miata2.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_7 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_7.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_7 = WheelTag.create!(
									:image_id => image_7.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_8 = Image.create!(url: 'http://www.949racing.com/genii/15x8_6ULN_KW_1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_8 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_8.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_8 = WheelTag.create!(
									:image_id => image_8.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_9 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181289-2/P6214383.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_9 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_9.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_9 = WheelTag.create!(
									:image_id => image_9.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_10 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181301-2/P6214390.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_10 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_10.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_10 = WheelTag.create!(
									:image_id => image_10.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_11 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181310-2/P6214396.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_11 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_11.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_11 = WheelTag.create!(
									:image_id => image_11.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_12 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181307-2/P6214395.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_12 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_12.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_12 = WheelTag.create!(
									:image_id => image_12.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_13 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181304-2/P6214391.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_13 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_13.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_13 = WheelTag.create!(
									:image_id => image_13.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte_bronze

image_14 = Image.create!(url: 'http://i81.photobucket.com/albums/j221/cococarbine/IMG_1917.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_14 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_14.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_14 = WheelTag.create!(
									:image_id => image_14.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_15 = Image.create!(url: 'http://i81.photobucket.com/albums/j221/cococarbine/IMG_1918.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_15 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_15.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_15 = WheelTag.create!(
									:image_id => image_15.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_16 = Image.create!(url: 'http://chows.smugmug.com/photos/574274739_rQcC6-L.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_16 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_16.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

wheel_tag_16 = WheelTag.create!(
									:image_id => image_16.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x9, nickel

image_17 = Image.create!(url: 'http://chows.smugmug.com/photos/574238810_G9Pjx-L-1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_17 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_17.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

wheel_tag_17 = WheelTag.create!(
									:image_id => image_17.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x9, nickel

image_18 = Image.create!(url: 'http://chows.smugmug.com/photos/574240232_jeWEj-L.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_18 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_18.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

wheel_tag_18 = WheelTag.create!(
									:image_id => image_18.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x9, nickel

image_19 = Image.create!(url: 'http://i514.photobucket.com/albums/t346/84im2008/100_2755.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_19 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_19.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Marina Green Mica').first.id)

wheel_tag_19 = WheelTag.create!(
									:image_id => image_19.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_20 = Image.create!(url: 'http://i514.photobucket.com/albums/t346/84im2008/100_2761.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_20 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_20.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Marina Green Mica').first.id)

wheel_tag_20 = WheelTag.create!(
									:image_id => image_20.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_21 = Image.create!(url: 'http://www.steveandlee.com/galleries/miata/6ul_2.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_21 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_21.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_21 = WheelTag.create!(
									:image_id => image_21.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x9, bronze

image_22 = Image.create!(url: 'http://www.steveandlee.com/galleries/miata/6ul_3.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_22 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_22.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_22 = WheelTag.create!(
									:image_id => image_22.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x9, bronze

image_23 = Image.create!(url: 'http://www.steveandlee.com/galleries/miata/6ul_1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_23 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_23.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_23 = WheelTag.create!(
									:image_id => image_23.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x9, bronze

image_24 = Image.create!(url: 'http://i131.photobucket.com/albums/p288/ej815/2.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_24 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_24.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_24 = WheelTag.create!(
									:image_id => image_24.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x8, silver

image_25 = Image.create!(url: 'http://lh6.ggpht.com/_Isc5Ihv4tU0/Smpr8JurXaI/AAAAAAAAA6Q/wp1Xi0nJkxM/s512/IMG_1848.JPG',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_25 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_25.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_25 = WheelTag.create!(
									:image_id => image_25.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_26 = Image.create!(url: 'http://farm3.static.flickr.com/2448/3758845237_ee394ea57c_o.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_26 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_26.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_26 = WheelTag.create!(
									:image_id => image_26.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

# image_27 is dead

# image_27 = Image.create!(url: 'http://farm3.static.flickr.com/2646/3759643438_06c880dc25_o.jpg',
# 												caption: 'test caption',
# 												user_id: user_1.id)

# car_tag_27 = CarTag.create!(
# 									:user_id => user_1.id,
# 									:image_id => image_27.id,
# 									:car_model_id => car_model_2.id,
# 	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

# wheel_tag_27 = WheelTag.create!(
# 									:image_id => image_27.id,
# 									:wheel_model_id => wheel_6ul.id,
# 									:wheel_size_id => size_15x8.id,
# 									:wheel_offset_id => offset_36.id,
# 									:wheel_color_id => wheel_black.id)

# 15x8, black

image_28 = Image.create!(url: 'http://farm3.static.flickr.com/2647/3759642414_43a9ed567d_o.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_28 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_28.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_28 = WheelTag.create!(
									:image_id => image_28.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_29 = Image.create!(url: 'http://farm4.static.flickr.com/3439/3758846729_ce898c79ab_o.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_29 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_29.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_29 = WheelTag.create!(
									:image_id => image_29.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_30 = Image.create!(url: 'http://chows.smugmug.com/photos/606574126_yDoNC-XL-1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_30 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_30.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

wheel_tag_30 = WheelTag.create!(
									:image_id => image_30.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_31 = Image.create!(url: 'http://i27.photobucket.com/albums/c194/Nis01/Digital%20Photo%20Album/IMG_1744.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_31 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_31.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'White').first.id)

wheel_tag_31 = WheelTag.create!(
									:image_id => image_31.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, bronze

image_32 = Image.create!(url: 'http://www.travisharrell.com/gallery/d/181622-2/P8084573.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_32 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_32.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Emerald Mica').first.id)

wheel_tag_32 = WheelTag.create!(
									:image_id => image_32.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, bronze

image_33 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/069.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_33 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_33.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_33 = WheelTag.create!(
									:image_id => image_33.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_34 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/070.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_34 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_34.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_34 = WheelTag.create!(
									:image_id => image_34.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_35 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/073.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_35 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_35.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_35 = WheelTag.create!(
									:image_id => image_35.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_36 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/071.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_36 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_36.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_36 = WheelTag.create!(
									:image_id => image_36.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_37 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/083.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_37 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_37.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_37 = WheelTag.create!(
									:image_id => image_37.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_38 = Image.create!(url: 'http://i165.photobucket.com/albums/u49/mx5racer/photoshoot/076.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_38 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_38.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Silver Stone Metallic').first.id)

wheel_tag_38 = WheelTag.create!(
									:image_id => image_38.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x9, black

image_39 = Image.create!(url: 'http://chows.smugmug.com/photos/576363591_xZmc9-M-1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_39 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_39.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Sapphire Blue').first.id)

wheel_tag_39 = WheelTag.create!(
									:image_id => image_39.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x9, nickel

image_40 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2786.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_40 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_40.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_40 = WheelTag.create!(
									:image_id => image_40.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_41 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2840.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_41 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_41.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_41 = WheelTag.create!(
									:image_id => image_41.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_42 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2842.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_42 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_42.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_42 = WheelTag.create!(
									:image_id => image_42.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_43 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2841.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_43 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_43.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_43 = WheelTag.create!(
									:image_id => image_43.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_44 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2832.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_44 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_44.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_44 = WheelTag.create!(
									:image_id => image_44.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_45 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/DSCF2847.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_45 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_45.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_45 = WheelTag.create!(
									:image_id => image_45.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_46 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/IMG_1986.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_46 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_46.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_46 = WheelTag.create!(
									:image_id => image_46.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_47 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/IMG_1974.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_47 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_47.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_47 = WheelTag.create!(
									:image_id => image_47.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_48 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/IMG_1965.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_48 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_48.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_48 = WheelTag.create!(
									:image_id => image_48.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_49 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/IMG_1982.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_49 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_49.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_49 = WheelTag.create!(
									:image_id => image_49.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_50 = Image.create!(url: 'http://i698.photobucket.com/albums/vv343/markpcivic/IMG_1975.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_50 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_50.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_50 = WheelTag.create!(
									:image_id => image_50.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_black.id)

# 15x8, black

image_51 = Image.create!(url: 'http://i43.tinypic.com/2pzzjv4.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_51 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_51.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'British Racing Green').first.id)

wheel_tag_51 = WheelTag.create!(
									:image_id => image_51.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_52 = Image.create!(url: 'http://i112.photobucket.com/albums/n178/zekdafied/09b2e5ef.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_52 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_52.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_52 = WheelTag.create!(
									:image_id => image_52.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte bronze

image_53 = Image.create!(url: 'http://i112.photobucket.com/albums/n178/zekdafied/155b523c.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_53 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_53.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_53 = WheelTag.create!(
									:image_id => image_53.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte bronze

image_54 = Image.create!(url: 'http://i112.photobucket.com/albums/n178/zekdafied/DSC_1050.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_54 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_54.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_54 = WheelTag.create!(
									:image_id => image_54.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte bronze

image_55 = Image.create!(url: 'http://i112.photobucket.com/albums/n178/zekdafied/DSC_1057.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_55 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_55.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_55 = WheelTag.create!(
									:image_id => image_55.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte bronze

image_56 = Image.create!(url: 'http://i112.photobucket.com/albums/n178/zekdafied/Miata_Pescadero4.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_56 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_56.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_56 = WheelTag.create!(
									:image_id => image_56.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, matte bronze

image_57 = Image.create!(url: 'http://farm3.static.flickr.com/2720/4305473494_9d346da380_b.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_57 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_57.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_57 = WheelTag.create!(
									:image_id => image_57.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x9, silver

image_58 = Image.create!(url: 'http://farm3.static.flickr.com/2749/4305474196_a17cf56f68_b.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_58 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_58.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_58 = WheelTag.create!(
									:image_id => image_58.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x9, silver

image_59 = Image.create!(url: 'http://farm3.static.flickr.com/2708/4304732117_7f69e44432_b.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_59 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_59.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_59 = WheelTag.create!(
									:image_id => image_59.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x9, silver

image_60 = Image.create!(url: 'http://farm5.static.flickr.com/4016/4305475532_2295d0c5cb_b.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_60 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_60.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_60 = WheelTag.create!(
									:image_id => image_60.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x9, silver

image_61 = Image.create!(url: 'http://farm5.static.flickr.com/4065/4304733371_106199a75e_b.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_61 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_61.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_61 = WheelTag.create!(
									:image_id => image_61.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_silver.id)

# 15x9, silver

image_62 = Image.create!(url: 'http://i47.tinypic.com/i3733l.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_62 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_62.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Marina Green Mica').first.id)

wheel_tag_62 = WheelTag.create!(
									:image_id => image_62.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x8, bronze

image_63 = Image.create!(url: 'http://www.steveandlee.com/galleries/miata/sideskirts_iphone_1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_63 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_63.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_63 = WheelTag.create!(
									:image_id => image_63.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x9.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_matte_bronze.id)

# 15x9, bronze

image_64 = Image.create!(url: 'http://photos-d.ak.fbcdn.net/hphotos-ak-ash1/hs431.ash1/23833_343130307960_619027960_3522644_2735470_n.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_64 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_64.id,
									:car_model_id => car_model_3.id,
	 								:car_color_id => CarColor.where(paint_name: 'Brilliant Black').first.id)

wheel_tag_64 = WheelTag.create!(
									:image_id => image_64.id,
									:wheel_model_id => wheel_6ul.id,
									:wheel_size_id => size_15x8.id,
									:wheel_offset_id => offset_36.id,
									:wheel_color_id => wheel_nickel.id)

# 15x8, nickel

image_65 = Image.create!(url: 'http://i640.photobucket.com/albums/uu128/97mmiata/RPF1_rearview.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_65 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_65.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'British Racing Green').first.id)

wheel_tag_65 = WheelTag.create!(
									:image_id => image_65.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown

image_66 = Image.create!(url: 'http://i640.photobucket.com/albums/uu128/97mmiata/RPF1_sideview2.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_66 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_66.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'British Racing Green').first.id)

wheel_tag_66 = WheelTag.create!(
									:image_id => image_66.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown

image_67 = Image.create!(url: 'http://farm3.static.flickr.com/2775/4518592608_8bd880e836_z.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_67 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_67.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_67 = WheelTag.create!(
									:image_id => image_67.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_15x7.id,
									:wheel_offset_id => offset_35.id,
									:wheel_color_id => wheel_silver.id)

# 15x7, silver

image_68 = Image.create!(url: 'http://farm4.static.flickr.com/3141/3165211747_12c28789dd_z.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_68 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_68.id,
									:car_model_id => car_model_1.id,
	 								:car_color_id => CarColor.where(paint_name: 'Classic Red').first.id)

wheel_tag_68 = WheelTag.create!(
									:image_id => image_68.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_15x7.id,
									:wheel_offset_id => offset_35.id,
									:wheel_color_id => wheel_silver.id)

# 15x7, silver

image_69 = Image.create!(url: 'http://revlimiter.net/blog/wp-content/uploads/2009/12/DSC_4545sm.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_69 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_69.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_69 = WheelTag.create!(
									:image_id => image_69.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown

image_70 = Image.create!(url: 'http://revlimiter.net/blog/wp-content/uploads/2009/11/DSC_4249_sm.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_70 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_70.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_70 = WheelTag.create!(
									:image_id => image_70.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown

image_71 = Image.create!(url: 'http://revlimiter.net/blog/wp-content/uploads/2010/11/DSC_8048.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_71 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_71.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_71 = WheelTag.create!(
									:image_id => image_71.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown

image_72 = Image.create!(url: 'http://revlimiter.net/blog/wp-content/uploads/2010/07/top1.jpg',
												caption: 'test caption',
												user_id: user_1.id)

car_tag_72 = CarTag.create!(
									:user_id => user_1.id,
									:image_id => image_72.id,
									:car_model_id => car_model_2.id,
	 								:car_color_id => CarColor.where(paint_name: 'Montego Blue Mica').first.id)

wheel_tag_72 = WheelTag.create!(
									:image_id => image_72.id,
									:wheel_model_id => wheel_rpf1.id,
									:wheel_size_id => size_14x7.id,
									:wheel_offset_id => offset_27.id,
									:wheel_color_id => wheel_silver.id)

# 14x7, silver, offset unknown








































