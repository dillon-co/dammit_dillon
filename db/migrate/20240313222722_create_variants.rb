class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.belongs_to :art_work, null: false, foreign_key: true
      t.integer :size
      t.integer :width
      t.integer :height
      t.float :price_in_eth
      t.float :price_in_usd

      t.timestamps
    end
  end
end
