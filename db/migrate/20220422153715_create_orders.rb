class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status, :default =>  "NEW", null:false
      #Ex:- :default =>''
      t.datetime :finished_time, default: -> { 'NULL' }, null: true
      #Ex:- :null => false
      #Ex:- :default =>''
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
