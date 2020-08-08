class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.integer :contact_number
      t.string :picture

      t.timestamps
    end
  end
end
