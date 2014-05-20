class CreatePointOfDiversions < ActiveRecord::Migration
  def change
    create_table :point_of_diversions do |t|
      t.string :name

      t.timestamps
    end
  end
end
