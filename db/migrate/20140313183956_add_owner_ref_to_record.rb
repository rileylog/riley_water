class AddOwnerRefToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :owner, index: true 
  end
end
