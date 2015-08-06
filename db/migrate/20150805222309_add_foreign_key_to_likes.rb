class AddForeignKeyToLikesAnimals < ActiveRecord::Migration
  def change
    add_column :like_animals, :user_id, :integer
    add_column :like_animals, :animal_id, :integer
  end
end
