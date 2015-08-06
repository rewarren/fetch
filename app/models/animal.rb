class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :like_animals, dependent: :destroy
  has_many :liked_by, through: :like_animals, source: :user
end
