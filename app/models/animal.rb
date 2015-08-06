class Animal < ActiveRecord::Base
  # has_many :animal_likes
  # has_many :users, through: :animal_likes
  belongs_to :user
end
