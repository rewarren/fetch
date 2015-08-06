class Animal < ActiveRecord::Base
  has_many :likes, dependent: :destroy
end
