class CreateBathrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :bathrooms do |t|
      t.float :price
      t.text :description
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
