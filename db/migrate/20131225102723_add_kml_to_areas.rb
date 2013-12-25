class AddKmlToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :kml, :string
  end
end
