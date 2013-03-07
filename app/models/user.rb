class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, 
         :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]
  # devise :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :user_name

  # for oath
  attr_accessible :provider, :uid, :access_token

  # validates :user_name, presence: true, uniqueness: { case_sensitive: false },
  # 					length: { maximum: 20 }
 	# validates :email, presence: true, uniqueness: { case_sensitive: false }

 	has_many :images
 	has_many :image_likes
  has_many :comments
 	has_many :wheel_tags
 	has_many :car_tags

 	# before_save { self.email.downcase! }

  def self.find_for_facebook_oauth(auth)

    user = User.where(:email => auth.info.email).first

    if user
      user.update_attributes(
        provider: auth.provider,
        uid: auth.uid,
        access_token: auth.credentials.token,
      )
    else
      user = User.create!(
        user_name: auth.info.name,
        provider: auth.provider,
        uid: auth.uid,
        email: auth.info.email,
        access_token: auth.credentials.token,
        password: Devise.friendly_token[0, 20]
      )

      # Devise::Notifier.reset_password_instructions(user).deliver
    end

    user
  end

  def facebook_friends
    # see for more: https://github.com/arsduo/koala
    graph = Koala::Facebook::API.new(access_token)
    graph.get_object("me")
    graph.get_connections("me", "friends")
  end
end