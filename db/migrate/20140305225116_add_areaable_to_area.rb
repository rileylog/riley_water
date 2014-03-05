class AddAreaableToArea < ActiveRecord::Migration
  def change
    add_column :areas, :areaable_id, :integer
    add_column :areas, :areaable_type, :integer 
  end
end
