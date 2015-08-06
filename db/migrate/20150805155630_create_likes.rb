class CreateLikesAnimals < ActiveRecord::Migration
  def change
    create_table :like_animals do |t|
      t.references :animal, index: true, foreign_key: true
    end
  end
end
