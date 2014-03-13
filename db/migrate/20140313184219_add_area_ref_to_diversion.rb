class AddAreaRefToDiversion < ActiveRecord::Migration
  def change
    add_reference :diversions, :area, index: true 
  end
end
