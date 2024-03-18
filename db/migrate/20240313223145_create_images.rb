class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.belongs_to :variant, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
