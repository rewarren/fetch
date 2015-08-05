class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :animal, index: true, foreign_key: true
    end
  end
end
