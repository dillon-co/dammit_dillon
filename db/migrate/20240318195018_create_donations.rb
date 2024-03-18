class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.belongs_to :user, null: true, foreign_key: true
      t.bigint :amount_in_sats
      t.integer :status
      t.string :payment_hash
      t.string :payment_request

      t.timestamps
    end
  end
end
