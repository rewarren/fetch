class User < ActiveRecord::Base
  has_many :like_animals
  has_many :likes, through: :like_animals, source: :recipe
  has_many :animals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
