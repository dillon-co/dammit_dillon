class CreateArtWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :art_works do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :contract_address
      t.integer :medium_type

      t.timestamps
    end
  end
end
