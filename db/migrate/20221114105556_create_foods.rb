class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.integer :restaurant_id, null: false
      t.string :description, null: false, index: true
      t.string :dish, null: false, index: true
      t.string :fruits, null: false, index: true
      t.string :ingredient, null: false, index: true
      t.string :measurement, null: false, index: true
      t.string :spice, null: false, index: true
      t.string :sushi, null: false, index: true
      t.string :vegetables, null: false, index: true

      t.timestamps
    end
  end
end
