class CreateForSales < ActiveRecord::Migration
  def change
    create_table :for_sales do |t|
      t.references :area, index: true
      t.float :volume
      t.string :source
      t.string :description
      t.string :transferable_to, array: true, default: []

      t.timestamps
    end
  end
end
