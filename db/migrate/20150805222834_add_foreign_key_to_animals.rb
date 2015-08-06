class AddForeignKeyToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :user_id, :integer
  end
end
