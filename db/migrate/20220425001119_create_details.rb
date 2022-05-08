class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.integer :qty
      t.float :total_price, null: true
      t.references :order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
