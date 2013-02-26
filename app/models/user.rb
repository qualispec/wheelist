class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_token, 
  								:user_name

  has_secure_password

  validates :user_name, presence: true, uniqueness: { case_sensitive: false },
  					length: { maximum: 20 }
 	validates :email, presence: true, uniqueness: { case_sensitive: false }
 	validates :password, length: { minimum: 8 }
 	validates :password_confirmation, presence: true

 	has_many :images
 	has_many :image_likes
 	has_many :wheeltaggings
 	has_many :cartaggings

 	before_save { self.email.downcase! }
 	before_save :create_remember_token

 	private

 		def create_remember_token
 			self.remember_token = SecureRandom.urlsafe_base64
 		end

end