class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :country
      t.string :home
      t.integer :pincode
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
