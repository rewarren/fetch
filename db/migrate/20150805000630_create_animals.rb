class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :photo_url
      t.integer :age
      t.string :gender
      t.string :bio
      t.references :variety, index: true, foreign_key: true
    end
  end
end
