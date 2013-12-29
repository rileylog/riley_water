class CreateWanteds < ActiveRecord::Migration
  def change
    create_table :wanteds do |t|
      t.references :area, index: true
      t.integer :volume
      t.string :source
      t.string :description

      t.timestamps
    end
  end
end
