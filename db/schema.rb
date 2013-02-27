# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130227200413) do

  create_table "car_color_options", :force => true do |t|
    t.integer  "car_model_id"
    t.integer  "car_color_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "car_colors", :force => true do |t|
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "paint_name"
  end

  create_table "car_mfgs", :force => true do |t|
    t.string   "mfg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "car_models", :force => true do |t|
    t.string   "model"
    t.integer  "car_mfg_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "year"
  end

  create_table "car_tags", :force => true do |t|
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "car_model_id"
    t.integer  "car_color_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cars", :force => true do |t|
    t.string   "mfg"
    t.string   "model"
    t.integer  "year"
    t.string   "official_color"
    t.string   "color"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "cartaggings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "car_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "image_likes", :force => true do |t|
    t.integer  "image_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "url"
    t.string   "caption"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wheel_color_options", :force => true do |t|
    t.integer  "wheel_model_id"
    t.integer  "wheel_color_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "wheel_colors", :force => true do |t|
    t.string   "paint_name"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wheel_mfgs", :force => true do |t|
    t.string   "mfg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wheel_models", :force => true do |t|
    t.string   "model"
    t.integer  "wheel_mfg_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "wheel_offset_options", :force => true do |t|
    t.integer  "wheel_model_id"
    t.integer  "wheeL_offset_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "wheel_offsets", :force => true do |t|
    t.integer  "offset"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wheel_size_options", :force => true do |t|
    t.integer  "wheel_model_id"
    t.integer  "wheel_size_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "wheel_sizes", :force => true do |t|
    t.integer  "diameter"
    t.float    "width"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wheel_tags", :force => true do |t|
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "wheel_model_id"
    t.integer  "wheel_size_id"
    t.integer  "wheel_offset_id"
    t.integer  "wheel_color_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "wheels", :force => true do |t|
    t.string   "mfg"
    t.string   "model"
    t.integer  "diameter"
    t.float    "width"
    t.integer  "offset"
    t.string   "bolt_pattern"
    t.string   "color"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "wheeltaggings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "wheel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
