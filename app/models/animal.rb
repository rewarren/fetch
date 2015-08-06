class Animal < ActiveRecord::Base
  has_many :like_animals, dependent: :destroy
  has_many :liked_by, through: :like_animals, source: :user
  belongs_to :user
end
