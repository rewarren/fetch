class User < ActiveRecord::Base
  has_many :animals
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
