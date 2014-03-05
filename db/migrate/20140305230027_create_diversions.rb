class CreateDiversions < ActiveRecord::Migration
  def change
    create_table :diversions do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
