class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :number
      t.string :type
      t.integer :recordable_id 
      t.integer :recordable_type 
      t.timestamps
    end
  end
end
