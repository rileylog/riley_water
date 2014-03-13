class AddRecordAndDiversionRefToOwner < ActiveRecord::Migration
  def change
    add_reference :owners, :records, index: true
    add_reference :owners, :diversions, index: true 
  end
end
