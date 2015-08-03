class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :photo_url
      t.string :species
      t.integer :age
      t.string :gender
      t.string :bio
    end
  end
end
