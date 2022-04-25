class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.text :description
      t.integer :qty
      t.float :price
      t.references :category, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.timestamps
    end
  end
end
