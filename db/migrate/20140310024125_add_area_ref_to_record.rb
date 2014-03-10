class AddAreaRefToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :area, index: true
    
  end
end
