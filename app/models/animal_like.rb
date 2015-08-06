class AnimalLike < ActiveRecord::Base
  belongs_to :animal
  belongs_to :user

  validate_uniqueness_of :animal_id, scope: :user_id
  validates_inclusion_of :value, in: [1, -1]
  # validate: ensure_not_author

end
