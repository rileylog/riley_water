class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :owner
      t.string :type
      t.string :source
      t.date :priority_date
      t.string :flow
      t.string :volume
      t.string :irrigation
      t.string :domestic
      t.string :stockwatering
      t.string :change_apps
      t.date :proof_due_date
      t.text :comments

      t.timestamps
    end
  end
end
