class User < ActiveRecord::Base
  has_many :animal_likes
  has_many :animals, through: :likes

  has_reputation :likes, source: {reputation: :votes, of: @animals}, aggregated_by: :sum

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
