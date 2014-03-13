class AddDiversionRefToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :diversions, index: true 
  end
end 