class User < ActiveRecord::Base
  after_create :fill_votes_left
  has_many :restaurants
  has_many :votes
  has_many :comments
  has_many :restaurants_voted_on,
      :through => :votes, :source => :restaurant
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :rpx_connectable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
