class AddKmlToPointOfDiversions < ActiveRecord::Migration
  def change
    add_column :point_of_diversions, :kml, :string
  end
end
