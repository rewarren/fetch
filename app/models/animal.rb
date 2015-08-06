class Animal < ActiveRecord::Base
  belongs_to :User

  has_reputation :likes, source: :user, aggregated_by: :sum
end
