class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :zip
      t.string :county
      t.integer :ownerable_id
      t.integer :ownerable_type 
      t.timestamps
    end
  end
end
