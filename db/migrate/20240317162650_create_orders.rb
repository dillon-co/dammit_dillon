class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :shipping_info_id, foreign_key: true
      t.integer :variant_id, foreign_key: true
     
      t.integer :order_state

      t.timestamps
    end
  end
end
