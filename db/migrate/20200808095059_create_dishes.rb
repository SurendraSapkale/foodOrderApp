class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :description
      t.string :cuisine
      t.string :special_dietery_details
      t.float :price
      t.string :street_details
      t.string :suburb
      t.string :state
      t.string :country
      t.integer :postcode
      t.string :picture
      t.integer :chef_id
      t.integer :buyer_id

      t.timestamps
    end
  end
end
