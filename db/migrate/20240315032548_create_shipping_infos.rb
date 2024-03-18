class CreateShippingInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_infos do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
