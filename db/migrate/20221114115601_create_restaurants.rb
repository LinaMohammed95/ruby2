class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false, index: true
      t.string :address, null: false, index: true
      t.string :phone, null: false, index: true

      t.timestamps
    end
  end
end
