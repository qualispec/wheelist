class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :user_name
  # attr_accessible :email, :password, :password_confirmation, :remember_token, 
  # 								:user_name

  # validates :user_name, presence: true, uniqueness: { case_sensitive: false },
  # 					length: { maximum: 20 }
 	# validates :email, presence: true, uniqueness: { case_sensitive: false }
 	# validates :password, length: { minimum: 8 }
 	# validates :password_confirmation, presence: true

 	has_many :images
 	has_many :image_likes
  has_many :comments
 	has_many :wheel_tags
 	has_many :car_tags

 	# before_save { self.email.downcase! }

end